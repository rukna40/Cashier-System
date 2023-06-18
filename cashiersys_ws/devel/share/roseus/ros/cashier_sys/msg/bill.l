;; Auto-generated. Do not edit!


(when (boundp 'cashier_sys::bill)
  (if (not (find-package "CASHIER_SYS"))
    (make-package "CASHIER_SYS"))
  (shadow 'bill (find-package "CASHIER_SYS")))
(unless (find-package "CASHIER_SYS::BILL")
  (make-package "CASHIER_SYS::BILL"))

(in-package "ROS")
;;//! \htmlinclude bill.msg.html


(defclass cashier_sys::bill
  :super ros::object
  :slots (_BillNumber _Timestamp _Quantity _Price _Total ))

(defmethod cashier_sys::bill
  (:init
   (&key
    ((:BillNumber __BillNumber) 0)
    ((:Timestamp __Timestamp) (instance ros::time :init))
    ((:Quantity __Quantity) 0)
    ((:Price __Price) 0.0)
    ((:Total __Total) 0.0)
    )
   (send-super :init)
   (setq _BillNumber (round __BillNumber))
   (setq _Timestamp __Timestamp)
   (setq _Quantity (round __Quantity))
   (setq _Price (float __Price))
   (setq _Total (float __Total))
   self)
  (:BillNumber
   (&optional __BillNumber)
   (if __BillNumber (setq _BillNumber __BillNumber)) _BillNumber)
  (:Timestamp
   (&optional __Timestamp)
   (if __Timestamp (setq _Timestamp __Timestamp)) _Timestamp)
  (:Quantity
   (&optional __Quantity)
   (if __Quantity (setq _Quantity __Quantity)) _Quantity)
  (:Price
   (&optional __Price)
   (if __Price (setq _Price __Price)) _Price)
  (:Total
   (&optional __Total)
   (if __Total (setq _Total __Total)) _Total)
  (:serialization-length
   ()
   (+
    ;; int64 _BillNumber
    8
    ;; time _Timestamp
    8
    ;; int64 _Quantity
    8
    ;; float64 _Price
    8
    ;; float64 _Total
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int64 _BillNumber
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _BillNumber (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _BillNumber) (= (length (_BillNumber . bv)) 2)) ;; bignum
              (write-long (ash (elt (_BillNumber . bv) 0) 0) s)
              (write-long (ash (elt (_BillNumber . bv) 1) -1) s))
             ((and (class _BillNumber) (= (length (_BillNumber . bv)) 1)) ;; big1
              (write-long (elt (_BillNumber . bv) 0) s)
              (write-long (if (>= _BillNumber 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _BillNumber s)(write-long (if (>= _BillNumber 0) 0 #xffffffff) s)))
     ;; time _Timestamp
       (write-long (send _Timestamp :sec) s) (write-long (send _Timestamp :nsec) s)
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
     ;; float64 _Price
       (sys::poke _Price (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _Total
       (sys::poke _Total (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int64 _BillNumber
#+(or :alpha :irix6 :x86_64)
      (setf _BillNumber (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _BillNumber (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; time _Timestamp
     (send _Timestamp :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _Timestamp :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
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
   ;; float64 _Price
     (setq _Price (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _Total
     (setq _Total (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get cashier_sys::bill :md5sum-) "360bbffaaae293a5eb667a3b95f35443")
(setf (get cashier_sys::bill :datatype-) "cashier_sys/bill")
(setf (get cashier_sys::bill :definition-)
      "int64 BillNumber
time Timestamp
int64 Quantity
float64 Price
float64 Total

")



(provide :cashier_sys/bill "360bbffaaae293a5eb667a3b95f35443")


