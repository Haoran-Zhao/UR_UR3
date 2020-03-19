;; Auto-generated. Do not edit!


(when (boundp 'matlab_gazebo::Tracker)
  (if (not (find-package "MATLAB_GAZEBO"))
    (make-package "MATLAB_GAZEBO"))
  (shadow 'Tracker (find-package "MATLAB_GAZEBO")))
(unless (find-package "MATLAB_GAZEBO::TRACKER")
  (make-package "MATLAB_GAZEBO::TRACKER"))

(in-package "ROS")
;;//! \htmlinclude Tracker.msg.html


(defclass matlab_gazebo::Tracker
  :super ros::object
  :slots (_up _down _left _right _forward _backward _init_joint _init_position ))

(defmethod matlab_gazebo::Tracker
  (:init
   (&key
    ((:up __up) 0.0)
    ((:down __down) 0.0)
    ((:left __left) 0.0)
    ((:right __right) 0.0)
    ((:forward __forward) 0.0)
    ((:backward __backward) 0.0)
    ((:init_joint __init_joint) nil)
    ((:init_position __init_position) nil)
    )
   (send-super :init)
   (setq _up (float __up))
   (setq _down (float __down))
   (setq _left (float __left))
   (setq _right (float __right))
   (setq _forward (float __forward))
   (setq _backward (float __backward))
   (setq _init_joint __init_joint)
   (setq _init_position __init_position)
   self)
  (:up
   (&optional __up)
   (if __up (setq _up __up)) _up)
  (:down
   (&optional __down)
   (if __down (setq _down __down)) _down)
  (:left
   (&optional __left)
   (if __left (setq _left __left)) _left)
  (:right
   (&optional __right)
   (if __right (setq _right __right)) _right)
  (:forward
   (&optional __forward)
   (if __forward (setq _forward __forward)) _forward)
  (:backward
   (&optional __backward)
   (if __backward (setq _backward __backward)) _backward)
  (:init_joint
   (&optional __init_joint)
   (if __init_joint (setq _init_joint __init_joint)) _init_joint)
  (:init_position
   (&optional __init_position)
   (if __init_position (setq _init_position __init_position)) _init_position)
  (:serialization-length
   ()
   (+
    ;; float64 _up
    8
    ;; float64 _down
    8
    ;; float64 _left
    8
    ;; float64 _right
    8
    ;; float64 _forward
    8
    ;; float64 _backward
    8
    ;; bool _init_joint
    1
    ;; bool _init_position
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _up
       (sys::poke _up (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _down
       (sys::poke _down (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _left
       (sys::poke _left (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _right
       (sys::poke _right (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _forward
       (sys::poke _forward (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _backward
       (sys::poke _backward (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; bool _init_joint
       (if _init_joint (write-byte -1 s) (write-byte 0 s))
     ;; bool _init_position
       (if _init_position (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _up
     (setq _up (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _down
     (setq _down (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _left
     (setq _left (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _right
     (setq _right (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _forward
     (setq _forward (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _backward
     (setq _backward (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; bool _init_joint
     (setq _init_joint (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _init_position
     (setq _init_position (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get matlab_gazebo::Tracker :md5sum-) "8c54a711bf68e69302a10bb7bfb7ca79")
(setf (get matlab_gazebo::Tracker :datatype-) "matlab_gazebo/Tracker")
(setf (get matlab_gazebo::Tracker :definition-)
      "# message type to describe the input of keyboard
# to be published as a topic

float64 up  # move up z+
float64 down  # move down z-
float64 left  # move left y+
float64 right  # move down y-
float64 forward  # move forward x+
float64 backward  # move backward x-

bool init_joint #initialize joint
bool init_position #initialize position

")



(provide :matlab_gazebo/Tracker "8c54a711bf68e69302a10bb7bfb7ca79")


