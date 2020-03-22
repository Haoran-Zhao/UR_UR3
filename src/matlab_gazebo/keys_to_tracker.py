#!/usr/bin/env python

import rospy
from std_msgs.msg import String
from simulation_ur3.msg import Tracker
import sys, select, tty, termios
import rospy
msg = """
Reading from the keyboard  and Publishing to Tracker!
---------------------------
Moving around:
        w
   a    s    d
        x
For Holonomic mode (strafing), hold down the shift key:
---------------------------
   I        P
   J        L

I : Initialize position
J : Initialize joint
anything else : stop
P/l : increase/decrease along x-axis
a/d : increase/decrease along y_axis
w/x : increase/decrease along z-axis
CTRL-C to quit
"""

step = 0.002
status = 0
key_mapping = {'w':(step,0,0,0,0,0), 'x':(0,-step,0,0,0,0), 'a':(0,0,step,0,0,0),
    'd':(0,0,0,-step,0,0), 's':(0,0,0,0,0,0), 'p':(0,0,0,0,step,0), 'l':(0,0,0,0,0,-step)}
key_states = {'i':(True,False), 'j':(False, True)}
def getKey():
    tty.setraw(sys.stdin.fileno())
    select.select([sys.stdin], [], [], 0)
    key = sys.stdin.read(1)
    termios.tcsetattr(sys.stdin, termios.TCSADRAIN, settings)
    return key


if __name__=="__main__":
    settings = termios.tcgetattr(sys.stdin)

    pub = rospy.Publisher('input_key', Tracker, queue_size=1)
    rospy.init_node('keys_to_tracker')

    try:
        print(msg)
        while(1):
            key = getKey()
            if (status == 14):
                print(msg)
            status = (status + 1) % 15
            if key in key_mapping.keys():
                up = key_mapping[key][0]
                down = key_mapping[key][1]
                left = key_mapping[key][2]
                right = key_mapping[key][3]
                forward = key_mapping[key][4]
                backward = key_mapping[key][5]
                init_position = False
                init_joint = False

            elif key in key_states.keys():
                up = 0
                down = 0
                left = 0
                right = 0
                forward = 0
                backward = 0
                init_position = key_states[key][0]
                init_joint = key_states[key][1]

            else:
                up = 0
                down = 0
                left = 0
                right = 0
                forward = 0
                backward = 0
                init_position = False
                init_joint = False
                if (key == '\x03'):
                    break
            tracker = Tracker()
            tracker.up = up
            tracker.down = down
            tracker.left = left
            tracker.right = right
            tracker.forward = forward
            tracker.backward = backward
            tracker.init_position = init_position
            tracker.init_joint = init_joint
            pub.publish(tracker)

    except Exception as e:
        print(e)

    finally:
        tracker = Tracker()
        tracker.up = 0
        tracker.down = 0
        tracker.left = 0
        tracker.right = 0
        tracker.forward = 0
        tracker.backward = 0
        tracker.init_position = False
        tracker.init_joint = False
        pub.publish(tracker)

        termios.tcsetattr(sys.stdin, termios.TCSADRAIN, settings)
