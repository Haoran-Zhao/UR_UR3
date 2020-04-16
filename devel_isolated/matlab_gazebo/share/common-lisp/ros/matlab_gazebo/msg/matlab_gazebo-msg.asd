
(cl:in-package :asdf)

(defsystem "matlab_gazebo-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "PosTracker" :depends-on ("_package_PosTracker"))
    (:file "_package_PosTracker" :depends-on ("_package"))
    (:file "Tracker" :depends-on ("_package_Tracker"))
    (:file "_package_Tracker" :depends-on ("_package"))
  ))