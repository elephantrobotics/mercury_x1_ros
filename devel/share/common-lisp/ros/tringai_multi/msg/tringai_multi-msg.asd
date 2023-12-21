
(cl:in-package :asdf)

(defsystem "tringai_multi-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "avoid" :depends-on ("_package_avoid"))
    (:file "_package_avoid" :depends-on ("_package"))
  ))