; Auto-generated. Do not edit!


(cl:in-package cashier_sys-msg)


;//! \htmlinclude bill.msg.html

(cl:defclass <bill> (roslisp-msg-protocol:ros-message)
  ((BillNumber
    :reader BillNumber
    :initarg :BillNumber
    :type cl:integer
    :initform 0)
   (Timestamp
    :reader Timestamp
    :initarg :Timestamp
    :type cl:real
    :initform 0)
   (Quantity
    :reader Quantity
    :initarg :Quantity
    :type cl:integer
    :initform 0)
   (Price
    :reader Price
    :initarg :Price
    :type cl:float
    :initform 0.0)
   (Total
    :reader Total
    :initarg :Total
    :type cl:float
    :initform 0.0))
)

(cl:defclass bill (<bill>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <bill>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'bill)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cashier_sys-msg:<bill> is deprecated: use cashier_sys-msg:bill instead.")))

(cl:ensure-generic-function 'BillNumber-val :lambda-list '(m))
(cl:defmethod BillNumber-val ((m <bill>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cashier_sys-msg:BillNumber-val is deprecated.  Use cashier_sys-msg:BillNumber instead.")
  (BillNumber m))

(cl:ensure-generic-function 'Timestamp-val :lambda-list '(m))
(cl:defmethod Timestamp-val ((m <bill>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cashier_sys-msg:Timestamp-val is deprecated.  Use cashier_sys-msg:Timestamp instead.")
  (Timestamp m))

(cl:ensure-generic-function 'Quantity-val :lambda-list '(m))
(cl:defmethod Quantity-val ((m <bill>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cashier_sys-msg:Quantity-val is deprecated.  Use cashier_sys-msg:Quantity instead.")
  (Quantity m))

(cl:ensure-generic-function 'Price-val :lambda-list '(m))
(cl:defmethod Price-val ((m <bill>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cashier_sys-msg:Price-val is deprecated.  Use cashier_sys-msg:Price instead.")
  (Price m))

(cl:ensure-generic-function 'Total-val :lambda-list '(m))
(cl:defmethod Total-val ((m <bill>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cashier_sys-msg:Total-val is deprecated.  Use cashier_sys-msg:Total instead.")
  (Total m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <bill>) ostream)
  "Serializes a message object of type '<bill>"
  (cl:let* ((signed (cl:slot-value msg 'BillNumber)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
  (cl:let ((__sec (cl:floor (cl:slot-value msg 'Timestamp)))
        (__nsec (cl:round (cl:* 1e9 (cl:- (cl:slot-value msg 'Timestamp) (cl:floor (cl:slot-value msg 'Timestamp)))))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 0) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __nsec) ostream))
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
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'Price))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <bill>) istream)
  "Deserializes a message object of type '<bill>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'BillNumber) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
    (cl:let ((__sec 0) (__nsec 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 0) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __nsec) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'Timestamp) (cl:+ (cl:coerce __sec 'cl:double-float) (cl:/ __nsec 1e9))))
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
    (cl:setf (cl:slot-value msg 'Price) (roslisp-utils:decode-double-float-bits bits)))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<bill>)))
  "Returns string type for a message object of type '<bill>"
  "cashier_sys/bill")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'bill)))
  "Returns string type for a message object of type 'bill"
  "cashier_sys/bill")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<bill>)))
  "Returns md5sum for a message object of type '<bill>"
  "360bbffaaae293a5eb667a3b95f35443")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'bill)))
  "Returns md5sum for a message object of type 'bill"
  "360bbffaaae293a5eb667a3b95f35443")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<bill>)))
  "Returns full string definition for message of type '<bill>"
  (cl:format cl:nil "int64 BillNumber~%time Timestamp~%int64 Quantity~%float64 Price~%float64 Total~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'bill)))
  "Returns full string definition for message of type 'bill"
  (cl:format cl:nil "int64 BillNumber~%time Timestamp~%int64 Quantity~%float64 Price~%float64 Total~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <bill>))
  (cl:+ 0
     8
     8
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <bill>))
  "Converts a ROS message object to a list"
  (cl:list 'bill
    (cl:cons ':BillNumber (BillNumber msg))
    (cl:cons ':Timestamp (Timestamp msg))
    (cl:cons ':Quantity (Quantity msg))
    (cl:cons ':Price (Price msg))
    (cl:cons ':Total (Total msg))
))
