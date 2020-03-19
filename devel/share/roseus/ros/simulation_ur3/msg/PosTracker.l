;; Auto-generated. Do not edit!


(when (boundp 'simulation_ur3::PosTracker)
  (if (not (find-package "SIMULATION_UR3"))
    (make-package "SIMULATION_UR3"))
  (shadow 'PosTracker (find-package "SIMULATION_UR3")))
(unless (find-package "SIMULATION_UR3::POSTRACKER")
  (make-package "SIMULATION_UR3::POSTRACKER"))

(in-package "ROS")
;;//! \htmlinclude PosTracker.msg.html


(defclass simulation_ur3::PosTracker
  :super ros::object
  :slots (_c_X _c_Y _c_Z _g_X _g_Y _g_Z ))

(defmethod simulation_ur3::PosTracker
  (:init
   (&key
    ((:c_X __c_X) 0.0)
    ((:c_Y __c_Y) 0.0)
    ((:c_Z __c_Z) 0.0)
    ((:g_X __g_X) 0.0)
    ((:g_Y __g_Y) 0.0)
    ((:g_Z __g_Z) 0.0)
    )
   (send-super :init)
   (setq _c_X (float __c_X))
   (setq _c_Y (float __c_Y))
   (setq _c_Z (float __c_Z))
   (setq _g_X (float __g_X))
   (setq _g_Y (float __g_Y))
   (setq _g_Z (float __g_Z))
   self)
  (:c_X
   (&optional __c_X)
   (if __c_X (setq _c_X __c_X)) _c_X)
  (:c_Y
   (&optional __c_Y)
   (if __c_Y (setq _c_Y __c_Y)) _c_Y)
  (:c_Z
   (&optional __c_Z)
   (if __c_Z (setq _c_Z __c_Z)) _c_Z)
  (:g_X
   (&optional __g_X)
   (if __g_X (setq _g_X __g_X)) _g_X)
  (:g_Y
   (&optional __g_Y)
   (if __g_Y (setq _g_Y __g_Y)) _g_Y)
  (:g_Z
   (&optional __g_Z)
   (if __g_Z (setq _g_Z __g_Z)) _g_Z)
  (:serialization-length
   ()
   (+
    ;; float64 _c_X
    8
    ;; float64 _c_Y
    8
    ;; float64 _c_Z
    8
    ;; float64 _g_X
    8
    ;; float64 _g_Y
    8
    ;; float64 _g_Z
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _c_X
       (sys::poke _c_X (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _c_Y
       (sys::poke _c_Y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _c_Z
       (sys::poke _c_Z (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _g_X
       (sys::poke _g_X (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _g_Y
       (sys::poke _g_Y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _g_Z
       (sys::poke _g_Z (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _c_X
     (setq _c_X (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _c_Y
     (setq _c_Y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _c_Z
     (setq _c_Z (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _g_X
     (setq _g_X (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _g_Y
     (setq _g_Y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _g_Z
     (setq _g_Z (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get simulation_ur3::PosTracker :md5sum-) "89129e0c6ca6b02f521b2e681ee9b035")
(setf (get simulation_ur3::PosTracker :datatype-) "simulation_ur3/PosTracker")
(setf (get simulation_ur3::PosTracker :definition-)
      "# message type to describe the tracking information of the end effector
# to be published as a topic

float64 c_X  # current X
float64 c_Y  # current Y
float64 c_Z  # current Z
float64 g_X  # goal X
float64 g_Y  # goal Y
float64 g_Z  # goal Z

")



(provide :simulation_ur3/PosTracker "89129e0c6ca6b02f521b2e681ee9b035")


