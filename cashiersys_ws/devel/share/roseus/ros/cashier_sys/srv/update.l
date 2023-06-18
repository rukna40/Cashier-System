;; Auto-generated. Do not edit!


(when (boundp 'cashier_sys::update)
  (if (not (find-package "CASHIER_SYS"))
    (make-package "CASHIER_SYS"))
  (shadow 'update (find-package "CASHIER_SYS")))
(unless (find-package "CASHIER_SYS::UPDATE")
  (make-package "CASHIER_SYS::UPDATE"))
(unless (find-package "CASHIER_SYS::UPDATEREQUEST")
  (make-package "CASHIER_SYS::UPDATEREQUEST"))
(unless (find-package "CASHIER_SYS::UPDATERESPONSE")
  (make-package "CASHIER_SYS::UPDATERESPONSE"))

(in-package "ROS")





(defclass cashier_sys::updateRequest
  :super ros::object
  :slots (_Quantity _Total ))

(defmethod cashier_sys::updateRequest
  (:init
   (&key
    ((:Quantity __Quantity) 0)
    ((:Total __Total) 0.0)
    )
   (send-super :init)
   (setq _Quantity (round __Quantity))
   (setq _Total (float __Total))
   self)
  (:Quantity
   (&optional __Quantity)
   (if __Quantity (setq _Quantity __Quantity)) _Quantity)
  (:Total
   (&optional __Total)
   (if __Total (setq _Total __Total)) _Total)
  (:serialization-length
   ()
   (+
    ;; int64 _Quantity
    8
    ;; float64 _Total
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int64 _Quantity
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _Quantity (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _Quantity) (= (length (_Quantity . bv)) 2)) ;; bignum
              (write-long (ash (elt (_Quantity . bv) 0) 0) s)
              (write-long (ash (elt (_Quantity . bv) 1) -1) s))
             ((and (class _Quantity) (= (length (_Quantity . bv)) 1)) ;; big1
              (write-long (elt (_Quantity . bv) 0) s)
              (write-long (if (>= _Quantity 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _Quantity s)(write-long (if (>= _Quantity 0) 0 #xffffffff) s)))
     ;; float64 _Total
       (sys::poke _Total (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int64 _Quantity
#+(or :alpha :irix6 :x86_64)
      (setf _Quantity (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _Quantity (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; float64 _Total
     (setq _Total (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass cashier_sys::updateResponse
  :super ros::object
  :slots (_status ))

(defmethod cashier_sys::updateResponse
  (:init
   (&key
    ((:status __status) "")
    )
   (send-super :init)
   (setq _status (string __status))
   self)
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:serialization-length
   ()
   (+
    ;; string _status
    4 (length _status)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _status
       (write-long (length _status) s) (princ _status s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _status
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _status (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass cashier_sys::update
  :super ros::object
  :slots ())

(setf (get cashier_sys::update :md5sum-) "d0089fd6bf7209a8b647fde121195743")
(setf (get cashier_sys::update :datatype-) "cashier_sys/update")
(setf (get cashier_sys::update :request) cashier_sys::updateRequest)
(setf (get cashier_sys::update :response) cashier_sys::updateResponse)

(defmethod cashier_sys::updateRequest
  (:response () (instance cashier_sys::updateResponse :init)))

(setf (get cashier_sys::updateRequest :md5sum-) "d0089fd6bf7209a8b647fde121195743")
(setf (get cashier_sys::updateRequest :datatype-) "cashier_sys/updateRequest")
(setf (get cashier_sys::updateRequest :definition-)
      "int64 Quantity
float64 Total
---
string status
")

(setf (get cashier_sys::updateResponse :md5sum-) "d0089fd6bf7209a8b647fde121195743")
(setf (get cashier_sys::updateResponse :datatype-) "cashier_sys/updateResponse")
(setf (get cashier_sys::updateResponse :definition-)
      "int64 Quantity
float64 Total
---
string status
")



(provide :cashier_sys/update "d0089fd6bf7209a8b647fde121195743")


