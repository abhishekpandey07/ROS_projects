; Auto-generated. Do not edit!


(cl:in-package SummerInternship-srv)


;//! \htmlinclude Simulate-request.msg.html

(cl:defclass <Simulate-request> (roslisp-msg-protocol:ros-message)
  ((JSON_params
    :reader JSON_params
    :initarg :JSON_params
    :type cl:string
    :initform ""))
)

(cl:defclass Simulate-request (<Simulate-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Simulate-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Simulate-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name SummerInternship-srv:<Simulate-request> is deprecated: use SummerInternship-srv:Simulate-request instead.")))

(cl:ensure-generic-function 'JSON_params-val :lambda-list '(m))
(cl:defmethod JSON_params-val ((m <Simulate-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader SummerInternship-srv:JSON_params-val is deprecated.  Use SummerInternship-srv:JSON_params instead.")
  (JSON_params m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Simulate-request>) ostream)
  "Serializes a message object of type '<Simulate-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'JSON_params))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'JSON_params))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Simulate-request>) istream)
  "Deserializes a message object of type '<Simulate-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'JSON_params) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'JSON_params) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Simulate-request>)))
  "Returns string type for a service object of type '<Simulate-request>"
  "SummerInternship/SimulateRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Simulate-request)))
  "Returns string type for a service object of type 'Simulate-request"
  "SummerInternship/SimulateRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Simulate-request>)))
  "Returns md5sum for a message object of type '<Simulate-request>"
  "65387222401ee76337106b3d608d2fbd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Simulate-request)))
  "Returns md5sum for a message object of type 'Simulate-request"
  "65387222401ee76337106b3d608d2fbd")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Simulate-request>)))
  "Returns full string definition for message of type '<Simulate-request>"
  (cl:format cl:nil "string JSON_params~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Simulate-request)))
  "Returns full string definition for message of type 'Simulate-request"
  (cl:format cl:nil "string JSON_params~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Simulate-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'JSON_params))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Simulate-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Simulate-request
    (cl:cons ':JSON_params (JSON_params msg))
))
;//! \htmlinclude Simulate-response.msg.html

(cl:defclass <Simulate-response> (roslisp-msg-protocol:ros-message)
  ((force
    :reader force
    :initarg :force
    :type cl:float
    :initform 0.0))
)

(cl:defclass Simulate-response (<Simulate-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Simulate-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Simulate-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name SummerInternship-srv:<Simulate-response> is deprecated: use SummerInternship-srv:Simulate-response instead.")))

(cl:ensure-generic-function 'force-val :lambda-list '(m))
(cl:defmethod force-val ((m <Simulate-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader SummerInternship-srv:force-val is deprecated.  Use SummerInternship-srv:force instead.")
  (force m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Simulate-response>) ostream)
  "Serializes a message object of type '<Simulate-response>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'force))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Simulate-response>) istream)
  "Deserializes a message object of type '<Simulate-response>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'force) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Simulate-response>)))
  "Returns string type for a service object of type '<Simulate-response>"
  "SummerInternship/SimulateResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Simulate-response)))
  "Returns string type for a service object of type 'Simulate-response"
  "SummerInternship/SimulateResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Simulate-response>)))
  "Returns md5sum for a message object of type '<Simulate-response>"
  "65387222401ee76337106b3d608d2fbd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Simulate-response)))
  "Returns md5sum for a message object of type 'Simulate-response"
  "65387222401ee76337106b3d608d2fbd")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Simulate-response>)))
  "Returns full string definition for message of type '<Simulate-response>"
  (cl:format cl:nil "float64 force~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Simulate-response)))
  "Returns full string definition for message of type 'Simulate-response"
  (cl:format cl:nil "float64 force~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Simulate-response>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Simulate-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Simulate-response
    (cl:cons ':force (force msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Simulate)))
  'Simulate-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Simulate)))
  'Simulate-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Simulate)))
  "Returns string type for a service object of type '<Simulate>"
  "SummerInternship/Simulate")