// Auto-generated. Do not edit!

// (in-package SummerInternship.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class SimulateRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.JSON_params = null;
    }
    else {
      if (initObj.hasOwnProperty('JSON_params')) {
        this.JSON_params = initObj.JSON_params
      }
      else {
        this.JSON_params = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SimulateRequest
    // Serialize message field [JSON_params]
    bufferOffset = _serializer.string(obj.JSON_params, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SimulateRequest
    let len;
    let data = new SimulateRequest(null);
    // Deserialize message field [JSON_params]
    data.JSON_params = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.JSON_params.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'SummerInternship/SimulateRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '0768a0a786d5eb75614a734ae74d551d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string JSON_params
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SimulateRequest(null);
    if (msg.JSON_params !== undefined) {
      resolved.JSON_params = msg.JSON_params;
    }
    else {
      resolved.JSON_params = ''
    }

    return resolved;
    }
};

class SimulateResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.force = null;
    }
    else {
      if (initObj.hasOwnProperty('force')) {
        this.force = initObj.force
      }
      else {
        this.force = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SimulateResponse
    // Serialize message field [force]
    bufferOffset = _serializer.float64(obj.force, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SimulateResponse
    let len;
    let data = new SimulateResponse(null);
    // Deserialize message field [force]
    data.force = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'SummerInternship/SimulateResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e18a51329659ac6263f87aaf9a01fe62';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 force
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SimulateResponse(null);
    if (msg.force !== undefined) {
      resolved.force = msg.force;
    }
    else {
      resolved.force = 0.0
    }

    return resolved;
    }
};

module.exports = {
  Request: SimulateRequest,
  Response: SimulateResponse,
  md5sum() { return '65387222401ee76337106b3d608d2fbd'; },
  datatype() { return 'SummerInternship/Simulate'; }
};
