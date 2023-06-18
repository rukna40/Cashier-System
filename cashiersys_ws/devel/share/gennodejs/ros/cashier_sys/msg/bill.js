// Auto-generated. Do not edit!

// (in-package cashier_sys.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class bill {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.BillNumber = null;
      this.Timestamp = null;
      this.Quantity = null;
      this.Price = null;
      this.Total = null;
    }
    else {
      if (initObj.hasOwnProperty('BillNumber')) {
        this.BillNumber = initObj.BillNumber
      }
      else {
        this.BillNumber = 0;
      }
      if (initObj.hasOwnProperty('Timestamp')) {
        this.Timestamp = initObj.Timestamp
      }
      else {
        this.Timestamp = {secs: 0, nsecs: 0};
      }
      if (initObj.hasOwnProperty('Quantity')) {
        this.Quantity = initObj.Quantity
      }
      else {
        this.Quantity = 0;
      }
      if (initObj.hasOwnProperty('Price')) {
        this.Price = initObj.Price
      }
      else {
        this.Price = 0.0;
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
    // Serializes a message object of type bill
    // Serialize message field [BillNumber]
    bufferOffset = _serializer.int64(obj.BillNumber, buffer, bufferOffset);
    // Serialize message field [Timestamp]
    bufferOffset = _serializer.time(obj.Timestamp, buffer, bufferOffset);
    // Serialize message field [Quantity]
    bufferOffset = _serializer.int64(obj.Quantity, buffer, bufferOffset);
    // Serialize message field [Price]
    bufferOffset = _serializer.float64(obj.Price, buffer, bufferOffset);
    // Serialize message field [Total]
    bufferOffset = _serializer.float64(obj.Total, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type bill
    let len;
    let data = new bill(null);
    // Deserialize message field [BillNumber]
    data.BillNumber = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [Timestamp]
    data.Timestamp = _deserializer.time(buffer, bufferOffset);
    // Deserialize message field [Quantity]
    data.Quantity = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [Price]
    data.Price = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [Total]
    data.Total = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 40;
  }

  static datatype() {
    // Returns string type for a message object
    return 'cashier_sys/bill';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '360bbffaaae293a5eb667a3b95f35443';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int64 BillNumber
    time Timestamp
    int64 Quantity
    float64 Price
    float64 Total
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new bill(null);
    if (msg.BillNumber !== undefined) {
      resolved.BillNumber = msg.BillNumber;
    }
    else {
      resolved.BillNumber = 0
    }

    if (msg.Timestamp !== undefined) {
      resolved.Timestamp = msg.Timestamp;
    }
    else {
      resolved.Timestamp = {secs: 0, nsecs: 0}
    }

    if (msg.Quantity !== undefined) {
      resolved.Quantity = msg.Quantity;
    }
    else {
      resolved.Quantity = 0
    }

    if (msg.Price !== undefined) {
      resolved.Price = msg.Price;
    }
    else {
      resolved.Price = 0.0
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

module.exports = bill;
