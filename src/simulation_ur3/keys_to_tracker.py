#!/usr/bin/env python

import rospy
from std_msgs.msg import String
from simulation_ur3.msg import Tracker
import sys, select, tty, termios
import rospy

step = 0.01
key_mapping = {'w':(step,0,0,0), 'x':(0,-step,0,0), 'a':(0,0,-step,0),'d':(0,0,0,step), 's':(0,0,0,0)}
key_states = {'i':True}
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
        while(1):
            key = getKey()
            if key in key_mapping.keys():
                up = key_mapping[key][0]
                down = key_mapping[key][1]
                left = key_mapping[key][2]
                right = key_mapping[key][3]
                init = False
            elif key in key_states.keys():
                up = 0
                down = 0
                left = 0
                right = 0
                init = key_states[key]
            else:
                up = 0
                down = 0
                left = 0
                right = 0
                init = False
                if (key == '\x03'):
                    break
            tracker = Tracker()
            tracker.up = up
            tracker.down = down
            tracker.left = left
            tracker.right = right
            tracker.init = init
            pub.publish(tracker)

    except Exception as e:
        print(e)

    finally:
        tracker = Tracker()
        tracker.up = 0
        tracker.down = 0
        tracker.left = 0
        tracker.right = 0
        tracker.init = False
        pub.publish(tracker)

        termios.tcsetattr(sys.stdin, termios.TCSADRAIN, settings)
