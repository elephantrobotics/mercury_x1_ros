// Auto-generated. Do not edit!

// (in-package lsm10_v2.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class difop {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.MotorSpeed = null;
    }
    else {
      if (initObj.hasOwnProperty('MotorSpeed')) {
        this.MotorSpeed = initObj.MotorSpeed
      }
      else {
        this.MotorSpeed = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type difop
    // Serialize message field [MotorSpeed]
    bufferOffset = _serializer.int32(obj.MotorSpeed, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type difop
    let len;
    let data = new difop(null);
    // Deserialize message field [MotorSpeed]
    data.MotorSpeed = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'lsm10_v2/difop';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd9089a8f658e468a7d86f8f561e2dfa0';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #float64 Temperature
    #float64 HighPressure
    int32 MotorSpeed
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new difop(null);
    if (msg.MotorSpeed !== undefined) {
      resolved.MotorSpeed = msg.MotorSpeed;
    }
    else {
      resolved.MotorSpeed = 0
    }

    return resolved;
    }
};

module.exports = difop;
