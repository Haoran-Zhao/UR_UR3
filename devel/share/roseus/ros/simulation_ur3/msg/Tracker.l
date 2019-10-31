;; Auto-generated. Do not edit!


(when (boundp 'simulation_ur3::Tracker)
  (if (not (find-package "SIMULATION_UR3"))
    (make-package "SIMULATION_UR3"))
  (shadow 'Tracker (find-package "SIMULATION_UR3")))
(unless (find-package "SIMULATION_UR3::TRACKER")
  (make-package "SIMULATION_UR3::TRACKER"))

(in-package "ROS")
;;//! \htmlinclude Tracker.msg.html


(defclass simulation_ur3::Tracker
  :super ros::object
  :slots (_up _down _left _right _init ))

(defmethod simulation_ur3::Tracker
  (:init
   (&key
    ((:up __up) 0.0)
    ((:down __down) 0.0)
    ((:left __left) 0.0)
    ((:right __right) 0.0)
    ((:init __init) nil)
    )
   (send-super :init)
   (setq _up (float __up))
   (setq _down (float __down))
   (setq _left (float __left))
   (setq _right (float __right))
   (setq _init __init)
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
  (:init
   (&optional __init)
   (if __init (setq _init __init)) _init)
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
    ;; bool _init
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
     ;; bool _init
       (if _init (write-byte -1 s) (write-byte 0 s))
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
   ;; bool _init
     (setq _init (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get simulation_ur3::Tracker :md5sum-) "4403fe424018d01642c7d5f64d2fbe63")
(setf (get simulation_ur3::Tracker :datatype-) "simulation_ur3/Tracker")
(setf (get simulation_ur3::Tracker :definition-)
      "# message type to describe the tracking information of the blocks
# to be published as a topic

float64 up  # move up
float64 down  # move down
float64 left  # move left
float64 right  # move down
bool init #initialize pose

")



(provide :simulation_ur3/Tracker "4403fe424018d01642c7d5f64d2fbe63")


