
(cl:in-package :asdf)

(defsystem "SummerInternship-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "Simulate" :depends-on ("_package_Simulate"))
    (:file "_package_Simulate" :depends-on ("_package"))
  ))