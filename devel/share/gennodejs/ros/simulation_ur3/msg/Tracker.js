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
      this.forward = null;
      this.backward = null;
      this.init_joint = null;
      this.init_position = null;
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
      if (initObj.hasOwnProperty('forward')) {
        this.forward = initObj.forward
      }
      else {
        this.forward = 0.0;
      }
      if (initObj.hasOwnProperty('backward')) {
        this.backward = initObj.backward
      }
      else {
        this.backward = 0.0;
      }
      if (initObj.hasOwnProperty('init_joint')) {
        this.init_joint = initObj.init_joint
      }
      else {
        this.init_joint = false;
      }
      if (initObj.hasOwnProperty('init_position')) {
        this.init_position = initObj.init_position
      }
      else {
        this.init_position = false;
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
    // Serialize message field [forward]
    bufferOffset = _serializer.float64(obj.forward, buffer, bufferOffset);
    // Serialize message field [backward]
    bufferOffset = _serializer.float64(obj.backward, buffer, bufferOffset);
    // Serialize message field [init_joint]
    bufferOffset = _serializer.bool(obj.init_joint, buffer, bufferOffset);
    // Serialize message field [init_position]
    bufferOffset = _serializer.bool(obj.init_position, buffer, bufferOffset);
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
    // Deserialize message field [forward]
    data.forward = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [backward]
    data.backward = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [init_joint]
    data.init_joint = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [init_position]
    data.init_position = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 50;
  }

  static datatype() {
    // Returns string type for a message object
    return 'simulation_ur3/Tracker';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8c54a711bf68e69302a10bb7bfb7ca79';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # message type to describe the input of keyboard
    # to be published as a topic
    
    float64 up  # move up z+
    float64 down  # move down z-
    float64 left  # move left y+
    float64 right  # move down y-
    float64 forward  # move forward x+
    float64 backward  # move backward x-
    
    bool init_joint #initialize joint
    bool init_position #initialize position
    
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

    if (msg.forward !== undefined) {
      resolved.forward = msg.forward;
    }
    else {
      resolved.forward = 0.0
    }

    if (msg.backward !== undefined) {
      resolved.backward = msg.backward;
    }
    else {
      resolved.backward = 0.0
    }

    if (msg.init_joint !== undefined) {
      resolved.init_joint = msg.init_joint;
    }
    else {
      resolved.init_joint = false
    }

    if (msg.init_position !== undefined) {
      resolved.init_position = msg.init_position;
    }
    else {
      resolved.init_position = false
    }

    return resolved;
    }
};

module.exports = Tracker;
