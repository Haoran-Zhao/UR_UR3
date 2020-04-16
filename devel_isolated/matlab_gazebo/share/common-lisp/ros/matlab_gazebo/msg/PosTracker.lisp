; Auto-generated. Do not edit!


(cl:in-package matlab_gazebo-msg)


;//! \htmlinclude PosTracker.msg.html

(cl:defclass <PosTracker> (roslisp-msg-protocol:ros-message)
  ((c_X
    :reader c_X
    :initarg :c_X
    :type cl:float
    :initform 0.0)
   (c_Y
    :reader c_Y
    :initarg :c_Y
    :type cl:float
    :initform 0.0)
   (c_Z
    :reader c_Z
    :initarg :c_Z
    :type cl:float
    :initform 0.0)
   (g_X
    :reader g_X
    :initarg :g_X
    :type cl:float
    :initform 0.0)
   (g_Y
    :reader g_Y
    :initarg :g_Y
    :type cl:float
    :initform 0.0)
   (g_Z
    :reader g_Z
    :initarg :g_Z
    :type cl:float
    :initform 0.0))
)

(cl:defclass PosTracker (<PosTracker>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PosTracker>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PosTracker)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name matlab_gazebo-msg:<PosTracker> is deprecated: use matlab_gazebo-msg:PosTracker instead.")))

(cl:ensure-generic-function 'c_X-val :lambda-list '(m))
(cl:defmethod c_X-val ((m <PosTracker>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader matlab_gazebo-msg:c_X-val is deprecated.  Use matlab_gazebo-msg:c_X instead.")
  (c_X m))

(cl:ensure-generic-function 'c_Y-val :lambda-list '(m))
(cl:defmethod c_Y-val ((m <PosTracker>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader matlab_gazebo-msg:c_Y-val is deprecated.  Use matlab_gazebo-msg:c_Y instead.")
  (c_Y m))

(cl:ensure-generic-function 'c_Z-val :lambda-list '(m))
(cl:defmethod c_Z-val ((m <PosTracker>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader matlab_gazebo-msg:c_Z-val is deprecated.  Use matlab_gazebo-msg:c_Z instead.")
  (c_Z m))

(cl:ensure-generic-function 'g_X-val :lambda-list '(m))
(cl:defmethod g_X-val ((m <PosTracker>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader matlab_gazebo-msg:g_X-val is deprecated.  Use matlab_gazebo-msg:g_X instead.")
  (g_X m))

(cl:ensure-generic-function 'g_Y-val :lambda-list '(m))
(cl:defmethod g_Y-val ((m <PosTracker>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader matlab_gazebo-msg:g_Y-val is deprecated.  Use matlab_gazebo-msg:g_Y instead.")
  (g_Y m))

(cl:ensure-generic-function 'g_Z-val :lambda-list '(m))
(cl:defmethod g_Z-val ((m <PosTracker>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader matlab_gazebo-msg:g_Z-val is deprecated.  Use matlab_gazebo-msg:g_Z instead.")
  (g_Z m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PosTracker>) ostream)
  "Serializes a message object of type '<PosTracker>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'c_X))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'c_Y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'c_Z))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'g_X))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'g_Y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'g_Z))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PosTracker>) istream)
  "Deserializes a message object of type '<PosTracker>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'c_X) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'c_Y) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'c_Z) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'g_X) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'g_Y) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'g_Z) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PosTracker>)))
  "Returns string type for a message object of type '<PosTracker>"
  "matlab_gazebo/PosTracker")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PosTracker)))
  "Returns string type for a message object of type 'PosTracker"
  "matlab_gazebo/PosTracker")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PosTracker>)))
  "Returns md5sum for a message object of type '<PosTracker>"
  "89129e0c6ca6b02f521b2e681ee9b035")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PosTracker)))
  "Returns md5sum for a message object of type 'PosTracker"
  "89129e0c6ca6b02f521b2e681ee9b035")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PosTracker>)))
  "Returns full string definition for message of type '<PosTracker>"
  (cl:format cl:nil "# message type to describe the tracking information of the end effector~%# to be published as a topic~%~%float64 c_X  # current X~%float64 c_Y  # current Y~%float64 c_Z  # current Z~%float64 g_X  # goal X~%float64 g_Y  # goal Y~%float64 g_Z  # goal Z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PosTracker)))
  "Returns full string definition for message of type 'PosTracker"
  (cl:format cl:nil "# message type to describe the tracking information of the end effector~%# to be published as a topic~%~%float64 c_X  # current X~%float64 c_Y  # current Y~%float64 c_Z  # current Z~%float64 g_X  # goal X~%float64 g_Y  # goal Y~%float64 g_Z  # goal Z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PosTracker>))
  (cl:+ 0
     8
     8
     8
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PosTracker>))
  "Converts a ROS message object to a list"
  (cl:list 'PosTracker
    (cl:cons ':c_X (c_X msg))
    (cl:cons ':c_Y (c_Y msg))
    (cl:cons ':c_Z (c_Z msg))
    (cl:cons ':g_X (g_X msg))
    (cl:cons ':g_Y (g_Y msg))
    (cl:cons ':g_Z (g_Z msg))
))
