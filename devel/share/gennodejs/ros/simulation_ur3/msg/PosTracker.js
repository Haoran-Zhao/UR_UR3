// Auto-generated. Do not edit!

// (in-package simulation_ur3.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class PosTracker {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.c_X = null;
      this.c_Y = null;
      this.c_Z = null;
      this.g_X = null;
      this.g_Y = null;
      this.g_Z = null;
    }
    else {
      if (initObj.hasOwnProperty('c_X')) {
        this.c_X = initObj.c_X
      }
      else {
        this.c_X = 0.0;
      }
      if (initObj.hasOwnProperty('c_Y')) {
        this.c_Y = initObj.c_Y
      }
      else {
        this.c_Y = 0.0;
      }
      if (initObj.hasOwnProperty('c_Z')) {
        this.c_Z = initObj.c_Z
      }
      else {
        this.c_Z = 0.0;
      }
      if (initObj.hasOwnProperty('g_X')) {
        this.g_X = initObj.g_X
      }
      else {
        this.g_X = 0.0;
      }
      if (initObj.hasOwnProperty('g_Y')) {
        this.g_Y = initObj.g_Y
      }
      else {
        this.g_Y = 0.0;
      }
      if (initObj.hasOwnProperty('g_Z')) {
        this.g_Z = initObj.g_Z
      }
      else {
        this.g_Z = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PosTracker
    // Serialize message field [c_X]
    bufferOffset = _serializer.float64(obj.c_X, buffer, bufferOffset);
    // Serialize message field [c_Y]
    bufferOffset = _serializer.float64(obj.c_Y, buffer, bufferOffset);
    // Serialize message field [c_Z]
    bufferOffset = _serializer.float64(obj.c_Z, buffer, bufferOffset);
    // Serialize message field [g_X]
    bufferOffset = _serializer.float64(obj.g_X, buffer, bufferOffset);
    // Serialize message field [g_Y]
    bufferOffset = _serializer.float64(obj.g_Y, buffer, bufferOffset);
    // Serialize message field [g_Z]
    bufferOffset = _serializer.float64(obj.g_Z, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PosTracker
    let len;
    let data = new PosTracker(null);
    // Deserialize message field [c_X]
    data.c_X = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [c_Y]
    data.c_Y = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [c_Z]
    data.c_Z = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [g_X]
    data.g_X = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [g_Y]
    data.g_Y = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [g_Z]
    data.g_Z = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 48;
  }

  static datatype() {
    // Returns string type for a message object
    return 'simulation_ur3/PosTracker';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '89129e0c6ca6b02f521b2e681ee9b035';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # message type to describe the tracking information of the end effector
    # to be published as a topic
    
    float64 c_X  # current X
    float64 c_Y  # current Y
    float64 c_Z  # current Z
    float64 g_X  # goal X
    float64 g_Y  # goal Y
    float64 g_Z  # goal Z
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PosTracker(null);
    if (msg.c_X !== undefined) {
      resolved.c_X = msg.c_X;
    }
    else {
      resolved.c_X = 0.0
    }

    if (msg.c_Y !== undefined) {
      resolved.c_Y = msg.c_Y;
    }
    else {
      resolved.c_Y = 0.0
    }

    if (msg.c_Z !== undefined) {
      resolved.c_Z = msg.c_Z;
    }
    else {
      resolved.c_Z = 0.0
    }

    if (msg.g_X !== undefined) {
      resolved.g_X = msg.g_X;
    }
    else {
      resolved.g_X = 0.0
    }

    if (msg.g_Y !== undefined) {
      resolved.g_Y = msg.g_Y;
    }
    else {
      resolved.g_Y = 0.0
    }

    if (msg.g_Z !== undefined) {
      resolved.g_Z = msg.g_Z;
    }
    else {
      resolved.g_Z = 0.0
    }

    return resolved;
    }
};

module.exports = PosTracker;
