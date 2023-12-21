; Auto-generated. Do not edit!


(cl:in-package lsm10_v2-msg)


;//! \htmlinclude difop.msg.html

(cl:defclass <difop> (roslisp-msg-protocol:ros-message)
  ((MotorSpeed
    :reader MotorSpeed
    :initarg :MotorSpeed
    :type cl:integer
    :initform 0))
)

(cl:defclass difop (<difop>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <difop>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'difop)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name lsm10_v2-msg:<difop> is deprecated: use lsm10_v2-msg:difop instead.")))

(cl:ensure-generic-function 'MotorSpeed-val :lambda-list '(m))
(cl:defmethod MotorSpeed-val ((m <difop>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lsm10_v2-msg:MotorSpeed-val is deprecated.  Use lsm10_v2-msg:MotorSpeed instead.")
  (MotorSpeed m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <difop>) ostream)
  "Serializes a message object of type '<difop>"
  (cl:let* ((signed (cl:slot-value msg 'MotorSpeed)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <difop>) istream)
  "Deserializes a message object of type '<difop>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'MotorSpeed) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<difop>)))
  "Returns string type for a message object of type '<difop>"
  "lsm10_v2/difop")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'difop)))
  "Returns string type for a message object of type 'difop"
  "lsm10_v2/difop")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<difop>)))
  "Returns md5sum for a message object of type '<difop>"
  "d9089a8f658e468a7d86f8f561e2dfa0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'difop)))
  "Returns md5sum for a message object of type 'difop"
  "d9089a8f658e468a7d86f8f561e2dfa0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<difop>)))
  "Returns full string definition for message of type '<difop>"
  (cl:format cl:nil "#float64 Temperature~%#float64 HighPressure~%int32 MotorSpeed~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'difop)))
  "Returns full string definition for message of type 'difop"
  (cl:format cl:nil "#float64 Temperature~%#float64 HighPressure~%int32 MotorSpeed~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <difop>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <difop>))
  "Converts a ROS message object to a list"
  (cl:list 'difop
    (cl:cons ':MotorSpeed (MotorSpeed msg))
))
