
(cl:in-package :asdf)

(defsystem "cashier_sys-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "update" :depends-on ("_package_update"))
    (:file "_package_update" :depends-on ("_package"))
  ))