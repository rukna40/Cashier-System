
(cl:in-package :asdf)

(defsystem "cashier_sys-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "bill" :depends-on ("_package_bill"))
    (:file "_package_bill" :depends-on ("_package"))
  ))