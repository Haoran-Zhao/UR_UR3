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

class Tracker {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.up = null;
      this.down = null;
      this.left = null;
      this.right = null;
      this.init = null;
    }
    else {
      if (initObj.hasOwnProperty('up')) {
        this.up = initObj.up
      }
      else {
        this.up = 0.0;
      }
      if (initObj.hasOwnProperty('down')) {
        this.down = initObj.down
      }
      else {
        this.down = 0.0;
      }
      if (initObj.hasOwnProperty('left')) {
        this.left = initObj.left
      }
      else {
        this.left = 0.0;
      }
      if (initObj.hasOwnProperty('right')) {
        this.right = initObj.right
      }
      else {
        this.right = 0.0;
      }
      if (initObj.hasOwnProperty('init')) {
        this.init = initObj.init
      }
      else {
        this.init = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Tracker
    // Serialize message field [up]
    bufferOffset = _serializer.float64(obj.up, buffer, bufferOffset);
    // Serialize message field [down]
    bufferOffset = _serializer.float64(obj.down, buffer, bufferOffset);
    // Serialize message field [left]
    bufferOffset = _serializer.float64(obj.left, buffer, bufferOffset);
    // Serialize message field [right]
    bufferOffset = _serializer.float64(obj.right, buffer, bufferOffset);
    // Serialize message field [init]
    bufferOffset = _serializer.bool(obj.init, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Tracker
    let len;
    let data = new Tracker(null);
    // Deserialize message field [up]
    data.up = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [down]
    data.down = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [left]
    data.left = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [right]
    data.right = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [init]
    data.init = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 33;
  }

  static datatype() {
    // Returns string type for a message object
    return 'simulation_ur3/Tracker';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4403fe424018d01642c7d5f64d2fbe63';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # message type to describe the tracking information of the blocks
    # to be published as a topic
    
    float64 up  # move up
    float64 down  # move down
    float64 left  # move left
    float64 right  # move down
    bool init #initialize pose
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Tracker(null);
    if (msg.up !== undefined) {
      resolved.up = msg.up;
    }
    else {
      resolved.up = 0.0
    }

    if (msg.down !== undefined) {
      resolved.down = msg.down;
    }
    else {
      resolved.down = 0.0
    }

    if (msg.left !== undefined) {
      resolved.left = msg.left;
    }
    else {
      resolved.left = 0.0
    }

    if (msg.right !== undefined) {
      resolved.right = msg.right;
    }
    else {
      resolved.right = 0.0
    }

    if (msg.init !== undefined) {
      resolved.init = msg.init;
    }
    else {
      resolved.init = false
    }

    return resolved;
    }
};

module.exports = Tracker;
