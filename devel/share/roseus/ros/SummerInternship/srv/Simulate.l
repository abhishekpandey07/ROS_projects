;; Auto-generated. Do not edit!


(when (boundp 'SummerInternship::Simulate)
  (if (not (find-package "SUMMERINTERNSHIP"))
    (make-package "SUMMERINTERNSHIP"))
  (shadow 'Simulate (find-package "SUMMERINTERNSHIP")))
(unless (find-package "SUMMERINTERNSHIP::SIMULATE")
  (make-package "SUMMERINTERNSHIP::SIMULATE"))
(unless (find-package "SUMMERINTERNSHIP::SIMULATEREQUEST")
  (make-package "SUMMERINTERNSHIP::SIMULATEREQUEST"))
(unless (find-package "SUMMERINTERNSHIP::SIMULATERESPONSE")
  (make-package "SUMMERINTERNSHIP::SIMULATERESPONSE"))

(in-package "ROS")





(defclass SummerInternship::SimulateRequest
  :super ros::object
  :slots (_JSON_params ))

(defmethod SummerInternship::SimulateRequest
  (:init
   (&key
    ((:JSON_params __JSON_params) "")
    )
   (send-super :init)
   (setq _JSON_params (string __JSON_params))
   self)
  (:JSON_params
   (&optional __JSON_params)
   (if __JSON_params (setq _JSON_params __JSON_params)) _JSON_params)
  (:serialization-length
   ()
   (+
    ;; string _JSON_params
    4 (length _JSON_params)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _JSON_params
       (write-long (length _JSON_params) s) (princ _JSON_params s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _JSON_params
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _JSON_params (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass SummerInternship::SimulateResponse
  :super ros::object
  :slots (_force ))

(defmethod SummerInternship::SimulateResponse
  (:init
   (&key
    ((:force __force) 0.0)
    )
   (send-super :init)
   (setq _force (float __force))
   self)
  (:force
   (&optional __force)
   (if __force (setq _force __force)) _force)
  (:serialization-length
   ()
   (+
    ;; float64 _force
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _force
       (sys::poke _force (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _force
     (setq _force (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass SummerInternship::Simulate
  :super ros::object
  :slots ())

(setf (get SummerInternship::Simulate :md5sum-) "65387222401ee76337106b3d608d2fbd")
(setf (get SummerInternship::Simulate :datatype-) "SummerInternship/Simulate")
(setf (get SummerInternship::Simulate :request) SummerInternship::SimulateRequest)
(setf (get SummerInternship::Simulate :response) SummerInternship::SimulateResponse)

(defmethod SummerInternship::SimulateRequest
  (:response () (instance SummerInternship::SimulateResponse :init)))

(setf (get SummerInternship::SimulateRequest :md5sum-) "65387222401ee76337106b3d608d2fbd")
(setf (get SummerInternship::SimulateRequest :datatype-) "SummerInternship/SimulateRequest")
(setf (get SummerInternship::SimulateRequest :definition-)
      "string JSON_params
---
float64 force

")

(setf (get SummerInternship::SimulateResponse :md5sum-) "65387222401ee76337106b3d608d2fbd")
(setf (get SummerInternship::SimulateResponse :datatype-) "SummerInternship/SimulateResponse")
(setf (get SummerInternship::SimulateResponse :definition-)
      "string JSON_params
---
float64 force

")



(provide :SummerInternship/Simulate "65387222401ee76337106b3d608d2fbd")


