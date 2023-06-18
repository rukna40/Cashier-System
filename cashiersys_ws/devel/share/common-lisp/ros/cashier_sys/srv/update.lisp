; Auto-generated. Do not edit!


(cl:in-package cashier_sys-srv)


;//! \htmlinclude update-request.msg.html

(cl:defclass <update-request> (roslisp-msg-protocol:ros-message)
  ((Quantity
    :reader Quantity
    :initarg :Quantity
    :type cl:integer
    :initform 0)
   (Total
    :reader Total
    :initarg :Total
    :type cl:float
    :initform 0.0))
)

(cl:defclass update-request (<update-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <update-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'update-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cashier_sys-srv:<update-request> is deprecated: use cashier_sys-srv:update-request instead.")))

(cl:ensure-generic-function 'Quantity-val :lambda-list '(m))
(cl:defmethod Quantity-val ((m <update-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cashier_sys-srv:Quantity-val is deprecated.  Use cashier_sys-srv:Quantity instead.")
  (Quantity m))

(cl:ensure-generic-function 'Total-val :lambda-list '(m))
(cl:defmethod Total-val ((m <update-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cashier_sys-srv:Total-val is deprecated.  Use cashier_sys-srv:Total instead.")
  (Total m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <update-request>) ostream)
  "Serializes a message object of type '<update-request>"
  (cl:let* ((signed (cl:slot-value msg 'Quantity)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'Total))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <update-request>) istream)
  "Deserializes a message object of type '<update-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'Quantity) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Total) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<update-request>)))
  "Returns string type for a service object of type '<update-request>"
  "cashier_sys/updateRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'update-request)))
  "Returns string type for a service object of type 'update-request"
  "cashier_sys/updateRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<update-request>)))
  "Returns md5sum for a message object of type '<update-request>"
  "d0089fd6bf7209a8b647fde121195743")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'update-request)))
  "Returns md5sum for a message object of type 'update-request"
  "d0089fd6bf7209a8b647fde121195743")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<update-request>)))
  "Returns full string definition for message of type '<update-request>"
  (cl:format cl:nil "int64 Quantity~%float64 Total~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'update-request)))
  "Returns full string definition for message of type 'update-request"
  (cl:format cl:nil "int64 Quantity~%float64 Total~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <update-request>))
  (cl:+ 0
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <update-request>))
  "Converts a ROS message object to a list"
  (cl:list 'update-request
    (cl:cons ':Quantity (Quantity msg))
    (cl:cons ':Total (Total msg))
))
;//! \htmlinclude update-response.msg.html

(cl:defclass <update-response> (roslisp-msg-protocol:ros-message)
  ((status
    :reader status
    :initarg :status
    :type cl:string
    :initform ""))
)

(cl:defclass update-response (<update-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <update-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'update-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cashier_sys-srv:<update-response> is deprecated: use cashier_sys-srv:update-response instead.")))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <update-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cashier_sys-srv:status-val is deprecated.  Use cashier_sys-srv:status instead.")
  (status m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <update-response>) ostream)
  "Serializes a message object of type '<update-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'status))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'status))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <update-response>) istream)
  "Deserializes a message object of type '<update-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'status) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'status) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<update-response>)))
  "Returns string type for a service object of type '<update-response>"
  "cashier_sys/updateResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'update-response)))
  "Returns string type for a service object of type 'update-response"
  "cashier_sys/updateResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<update-response>)))
  "Returns md5sum for a message object of type '<update-response>"
  "d0089fd6bf7209a8b647fde121195743")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'update-response)))
  "Returns md5sum for a message object of type 'update-response"
  "d0089fd6bf7209a8b647fde121195743")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<update-response>)))
  "Returns full string definition for message of type '<update-response>"
  (cl:format cl:nil "string status~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'update-response)))
  "Returns full string definition for message of type 'update-response"
  (cl:format cl:nil "string status~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <update-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'status))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <update-response>))
  "Converts a ROS message object to a list"
  (cl:list 'update-response
    (cl:cons ':status (status msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'update)))
  'update-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'update)))
  'update-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'update)))
  "Returns string type for a service object of type '<update>"
  "cashier_sys/update")