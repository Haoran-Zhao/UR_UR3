
(cl:in-package :asdf)

(defsystem "ur3_hardware-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "Tracker" :depends-on ("_package_Tracker"))
    (:file "_package_Tracker" :depends-on ("_package"))
  ))