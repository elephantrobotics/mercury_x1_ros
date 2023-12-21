; Auto-generated. Do not edit!


(cl:in-package tringai_multi-msg)


;//! \htmlinclude avoid.msg.html

(cl:defclass <avoid> (roslisp-msg-protocol:ros-message)
  ((angleX
    :reader angleX
    :initarg :angleX
    :type cl:float
    :initform 0.0)
   (angleY
    :reader angleY
    :initarg :angleY
    :type cl:float
    :initform 0.0)
   (distance
    :reader distance
    :initarg :distance
    :type cl:float
    :initform 0.0))
)

(cl:defclass avoid (<avoid>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <avoid>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'avoid)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tringai_multi-msg:<avoid> is deprecated: use tringai_multi-msg:avoid instead.")))

(cl:ensure-generic-function 'angleX-val :lambda-list '(m))
(cl:defmethod angleX-val ((m <avoid>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tringai_multi-msg:angleX-val is deprecated.  Use tringai_multi-msg:angleX instead.")
  (angleX m))

(cl:ensure-generic-function 'angleY-val :lambda-list '(m))
(cl:defmethod angleY-val ((m <avoid>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tringai_multi-msg:angleY-val is deprecated.  Use tringai_multi-msg:angleY instead.")
  (angleY m))

(cl:ensure-generic-function 'distance-val :lambda-list '(m))
(cl:defmethod distance-val ((m <avoid>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tringai_multi-msg:distance-val is deprecated.  Use tringai_multi-msg:distance instead.")
  (distance m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <avoid>) ostream)
  "Serializes a message object of type '<avoid>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'angleX))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'angleY))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'distance))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <avoid>) istream)
  "Deserializes a message object of type '<avoid>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'angleX) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'angleY) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'distance) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<avoid>)))
  "Returns string type for a message object of type '<avoid>"
  "tringai_multi/avoid")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'avoid)))
  "Returns string type for a message object of type 'avoid"
  "tringai_multi/avoid")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<avoid>)))
  "Returns md5sum for a message object of type '<avoid>"
  "e4df5e09e92d9d2b4758c9aab7a9ebeb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'avoid)))
  "Returns md5sum for a message object of type 'avoid"
  "e4df5e09e92d9d2b4758c9aab7a9ebeb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<avoid>)))
  "Returns full string definition for message of type '<avoid>"
  (cl:format cl:nil "float32 angleX~%float32 angleY~%float32 distance~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'avoid)))
  "Returns full string definition for message of type 'avoid"
  (cl:format cl:nil "float32 angleX~%float32 angleY~%float32 distance~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <avoid>))
  (cl:+ 0
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <avoid>))
  "Converts a ROS message object to a list"
  (cl:list 'avoid
    (cl:cons ':angleX (angleX msg))
    (cl:cons ':angleY (angleY msg))
    (cl:cons ':distance (distance msg))
))
