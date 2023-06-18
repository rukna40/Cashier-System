// Auto-generated. Do not edit!

// (in-package cashier_sys.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class updateRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.Quantity = null;
      this.Total = null;
    }
    else {
      if (initObj.hasOwnProperty('Quantity')) {
        this.Quantity = initObj.Quantity
      }
      else {
        this.Quantity = 0;
      }
      if (initObj.hasOwnProperty('Total')) {
        this.Total = initObj.Total
      }
      else {
        this.Total = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type updateRequest
    // Serialize message field [Quantity]
    bufferOffset = _serializer.int64(obj.Quantity, buffer, bufferOffset);
    // Serialize message field [Total]
    bufferOffset = _serializer.float64(obj.Total, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type updateRequest
    let len;
    let data = new updateRequest(null);
    // Deserialize message field [Quantity]
    data.Quantity = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [Total]
    data.Total = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 16;
  }

  static datatype() {
    // Returns string type for a service object
    return 'cashier_sys/updateRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd0032abe997b0e2ea508285b4dbae2ee';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int64 Quantity
    float64 Total
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new updateRequest(null);
    if (msg.Quantity !== undefined) {
      resolved.Quantity = msg.Quantity;
    }
    else {
      resolved.Quantity = 0
    }

    if (msg.Total !== undefined) {
      resolved.Total = msg.Total;
    }
    else {
      resolved.Total = 0.0
    }

    return resolved;
    }
};

class updateResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.status = null;
    }
    else {
      if (initObj.hasOwnProperty('status')) {
        this.status = initObj.status
      }
      else {
        this.status = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type updateResponse
    // Serialize message field [status]
    bufferOffset = _serializer.string(obj.status, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type updateResponse
    let len;
    let data = new updateResponse(null);
    // Deserialize message field [status]
    data.status = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.status);
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'cashier_sys/updateResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4fe5af303955c287688e7347e9b00278';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string status
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new updateResponse(null);
    if (msg.status !== undefined) {
      resolved.status = msg.status;
    }
    else {
      resolved.status = ''
    }

    return resolved;
    }
};

module.exports = {
  Request: updateRequest,
  Response: updateResponse,
  md5sum() { return 'd0089fd6bf7209a8b647fde121195743'; },
  datatype() { return 'cashier_sys/update'; }
};
