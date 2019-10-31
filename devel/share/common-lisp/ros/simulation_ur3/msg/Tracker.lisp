; Auto-generated. Do not edit!


(cl:in-package simulation_ur3-msg)


;//! \htmlinclude Tracker.msg.html

(cl:defclass <Tracker> (roslisp-msg-protocol:ros-message)
  ((up
    :reader up
    :initarg :up
    :type cl:float
    :initform 0.0)
   (down
    :reader down
    :initarg :down
    :type cl:float
    :initform 0.0)
   (left
    :reader left
    :initarg :left
    :type cl:float
    :initform 0.0)
   (right
    :reader right
    :initarg :right
    :type cl:float
    :initform 0.0)
   (init
    :reader init
    :initarg :init
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass Tracker (<Tracker>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Tracker>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Tracker)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name simulation_ur3-msg:<Tracker> is deprecated: use simulation_ur3-msg:Tracker instead.")))

(cl:ensure-generic-function 'up-val :lambda-list '(m))
(cl:defmethod up-val ((m <Tracker>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader simulation_ur3-msg:up-val is deprecated.  Use simulation_ur3-msg:up instead.")
  (up m))

(cl:ensure-generic-function 'down-val :lambda-list '(m))
(cl:defmethod down-val ((m <Tracker>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader simulation_ur3-msg:down-val is deprecated.  Use simulation_ur3-msg:down instead.")
  (down m))

(cl:ensure-generic-function 'left-val :lambda-list '(m))
(cl:defmethod left-val ((m <Tracker>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader simulation_ur3-msg:left-val is deprecated.  Use simulation_ur3-msg:left instead.")
  (left m))

(cl:ensure-generic-function 'right-val :lambda-list '(m))
(cl:defmethod right-val ((m <Tracker>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader simulation_ur3-msg:right-val is deprecated.  Use simulation_ur3-msg:right instead.")
  (right m))

(cl:ensure-generic-function 'init-val :lambda-list '(m))
(cl:defmethod init-val ((m <Tracker>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader simulation_ur3-msg:init-val is deprecated.  Use simulation_ur3-msg:init instead.")
  (init m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Tracker>) ostream)
  "Serializes a message object of type '<Tracker>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'up))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'down))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'left))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'right))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'init) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Tracker>) istream)
  "Deserializes a message object of type '<Tracker>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'up) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'down) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'left) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'right) (roslisp-utils:decode-double-float-bits bits)))
    (cl:setf (cl:slot-value msg 'init) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Tracker>)))
  "Returns string type for a message object of type '<Tracker>"
  "simulation_ur3/Tracker")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Tracker)))
  "Returns string type for a message object of type 'Tracker"
  "simulation_ur3/Tracker")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Tracker>)))
  "Returns md5sum for a message object of type '<Tracker>"
  "4403fe424018d01642c7d5f64d2fbe63")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Tracker)))
  "Returns md5sum for a message object of type 'Tracker"
  "4403fe424018d01642c7d5f64d2fbe63")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Tracker>)))
  "Returns full string definition for message of type '<Tracker>"
  (cl:format cl:nil "# message type to describe the tracking information of the blocks~%# to be published as a topic~%~%float64 up  # move up~%float64 down  # move down~%float64 left  # move left~%float64 right  # move down~%bool init #initialize pose~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Tracker)))
  "Returns full string definition for message of type 'Tracker"
  (cl:format cl:nil "# message type to describe the tracking information of the blocks~%# to be published as a topic~%~%float64 up  # move up~%float64 down  # move down~%float64 left  # move left~%float64 right  # move down~%bool init #initialize pose~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Tracker>))
  (cl:+ 0
     8
     8
     8
     8
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Tracker>))
  "Converts a ROS message object to a list"
  (cl:list 'Tracker
    (cl:cons ':up (up msg))
    (cl:cons ':down (down msg))
    (cl:cons ':left (left msg))
    (cl:cons ':right (right msg))
    (cl:cons ':init (init msg))
))
