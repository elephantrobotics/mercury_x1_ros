;; Auto-generated. Do not edit!


(when (boundp 'lsm10_v2::difop)
  (if (not (find-package "LSM10_V2"))
    (make-package "LSM10_V2"))
  (shadow 'difop (find-package "LSM10_V2")))
(unless (find-package "LSM10_V2::DIFOP")
  (make-package "LSM10_V2::DIFOP"))

(in-package "ROS")
;;//! \htmlinclude difop.msg.html


(defclass lsm10_v2::difop
  :super ros::object
  :slots (_MotorSpeed ))

(defmethod lsm10_v2::difop
  (:init
   (&key
    ((:MotorSpeed __MotorSpeed) 0)
    )
   (send-super :init)
   (setq _MotorSpeed (round __MotorSpeed))
   self)
  (:MotorSpeed
   (&optional __MotorSpeed)
   (if __MotorSpeed (setq _MotorSpeed __MotorSpeed)) _MotorSpeed)
  (:serialization-length
   ()
   (+
    ;; int32 _MotorSpeed
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _MotorSpeed
       (write-long _MotorSpeed s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _MotorSpeed
     (setq _MotorSpeed (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get lsm10_v2::difop :md5sum-) "d9089a8f658e468a7d86f8f561e2dfa0")
(setf (get lsm10_v2::difop :datatype-) "lsm10_v2/difop")
(setf (get lsm10_v2::difop :definition-)
      "#float64 Temperature
#float64 HighPressure
int32 MotorSpeed

")



(provide :lsm10_v2/difop "d9089a8f658e468a7d86f8f561e2dfa0")


