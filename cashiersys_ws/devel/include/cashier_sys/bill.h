// Generated by gencpp from file cashier_sys/bill.msg
// DO NOT EDIT!


#ifndef CASHIER_SYS_MESSAGE_BILL_H
#define CASHIER_SYS_MESSAGE_BILL_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace cashier_sys
{
template <class ContainerAllocator>
struct bill_
{
  typedef bill_<ContainerAllocator> Type;

  bill_()
    : BillNumber(0)
    , Timestamp()
    , Quantity(0)
    , Price(0.0)
    , Total(0.0)  {
    }
  bill_(const ContainerAllocator& _alloc)
    : BillNumber(0)
    , Timestamp()
    , Quantity(0)
    , Price(0.0)
    , Total(0.0)  {
  (void)_alloc;
    }



   typedef int64_t _BillNumber_type;
  _BillNumber_type BillNumber;

   typedef ros::Time _Timestamp_type;
  _Timestamp_type Timestamp;

   typedef int64_t _Quantity_type;
  _Quantity_type Quantity;

   typedef double _Price_type;
  _Price_type Price;

   typedef double _Total_type;
  _Total_type Total;





  typedef boost::shared_ptr< ::cashier_sys::bill_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::cashier_sys::bill_<ContainerAllocator> const> ConstPtr;

}; // struct bill_

typedef ::cashier_sys::bill_<std::allocator<void> > bill;

typedef boost::shared_ptr< ::cashier_sys::bill > billPtr;
typedef boost::shared_ptr< ::cashier_sys::bill const> billConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::cashier_sys::bill_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::cashier_sys::bill_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::cashier_sys::bill_<ContainerAllocator1> & lhs, const ::cashier_sys::bill_<ContainerAllocator2> & rhs)
{
  return lhs.BillNumber == rhs.BillNumber &&
    lhs.Timestamp == rhs.Timestamp &&
    lhs.Quantity == rhs.Quantity &&
    lhs.Price == rhs.Price &&
    lhs.Total == rhs.Total;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::cashier_sys::bill_<ContainerAllocator1> & lhs, const ::cashier_sys::bill_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace cashier_sys

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::cashier_sys::bill_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::cashier_sys::bill_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::cashier_sys::bill_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::cashier_sys::bill_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::cashier_sys::bill_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::cashier_sys::bill_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::cashier_sys::bill_<ContainerAllocator> >
{
  static const char* value()
  {
    return "360bbffaaae293a5eb667a3b95f35443";
  }

  static const char* value(const ::cashier_sys::bill_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x360bbffaaae293a5ULL;
  static const uint64_t static_value2 = 0xeb667a3b95f35443ULL;
};

template<class ContainerAllocator>
struct DataType< ::cashier_sys::bill_<ContainerAllocator> >
{
  static const char* value()
  {
    return "cashier_sys/bill";
  }

  static const char* value(const ::cashier_sys::bill_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::cashier_sys::bill_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int64 BillNumber\n"
"time Timestamp\n"
"int64 Quantity\n"
"float64 Price\n"
"float64 Total\n"
;
  }

  static const char* value(const ::cashier_sys::bill_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::cashier_sys::bill_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.BillNumber);
      stream.next(m.Timestamp);
      stream.next(m.Quantity);
      stream.next(m.Price);
      stream.next(m.Total);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct bill_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::cashier_sys::bill_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::cashier_sys::bill_<ContainerAllocator>& v)
  {
    s << indent << "BillNumber: ";
    Printer<int64_t>::stream(s, indent + "  ", v.BillNumber);
    s << indent << "Timestamp: ";
    Printer<ros::Time>::stream(s, indent + "  ", v.Timestamp);
    s << indent << "Quantity: ";
    Printer<int64_t>::stream(s, indent + "  ", v.Quantity);
    s << indent << "Price: ";
    Printer<double>::stream(s, indent + "  ", v.Price);
    s << indent << "Total: ";
    Printer<double>::stream(s, indent + "  ", v.Total);
  }
};

} // namespace message_operations
} // namespace ros

#endif // CASHIER_SYS_MESSAGE_BILL_H
