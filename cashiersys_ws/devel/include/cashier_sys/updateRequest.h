// Generated by gencpp from file cashier_sys/updateRequest.msg
// DO NOT EDIT!


#ifndef CASHIER_SYS_MESSAGE_UPDATEREQUEST_H
#define CASHIER_SYS_MESSAGE_UPDATEREQUEST_H


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
struct updateRequest_
{
  typedef updateRequest_<ContainerAllocator> Type;

  updateRequest_()
    : Quantity(0)
    , Total(0.0)  {
    }
  updateRequest_(const ContainerAllocator& _alloc)
    : Quantity(0)
    , Total(0.0)  {
  (void)_alloc;
    }



   typedef int64_t _Quantity_type;
  _Quantity_type Quantity;

   typedef double _Total_type;
  _Total_type Total;





  typedef boost::shared_ptr< ::cashier_sys::updateRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::cashier_sys::updateRequest_<ContainerAllocator> const> ConstPtr;

}; // struct updateRequest_

typedef ::cashier_sys::updateRequest_<std::allocator<void> > updateRequest;

typedef boost::shared_ptr< ::cashier_sys::updateRequest > updateRequestPtr;
typedef boost::shared_ptr< ::cashier_sys::updateRequest const> updateRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::cashier_sys::updateRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::cashier_sys::updateRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::cashier_sys::updateRequest_<ContainerAllocator1> & lhs, const ::cashier_sys::updateRequest_<ContainerAllocator2> & rhs)
{
  return lhs.Quantity == rhs.Quantity &&
    lhs.Total == rhs.Total;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::cashier_sys::updateRequest_<ContainerAllocator1> & lhs, const ::cashier_sys::updateRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace cashier_sys

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::cashier_sys::updateRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::cashier_sys::updateRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::cashier_sys::updateRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::cashier_sys::updateRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::cashier_sys::updateRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::cashier_sys::updateRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::cashier_sys::updateRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "d0032abe997b0e2ea508285b4dbae2ee";
  }

  static const char* value(const ::cashier_sys::updateRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xd0032abe997b0e2eULL;
  static const uint64_t static_value2 = 0xa508285b4dbae2eeULL;
};

template<class ContainerAllocator>
struct DataType< ::cashier_sys::updateRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "cashier_sys/updateRequest";
  }

  static const char* value(const ::cashier_sys::updateRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::cashier_sys::updateRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int64 Quantity\n"
"float64 Total\n"
;
  }

  static const char* value(const ::cashier_sys::updateRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::cashier_sys::updateRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.Quantity);
      stream.next(m.Total);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct updateRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::cashier_sys::updateRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::cashier_sys::updateRequest_<ContainerAllocator>& v)
  {
    s << indent << "Quantity: ";
    Printer<int64_t>::stream(s, indent + "  ", v.Quantity);
    s << indent << "Total: ";
    Printer<double>::stream(s, indent + "  ", v.Total);
  }
};

} // namespace message_operations
} // namespace ros

#endif // CASHIER_SYS_MESSAGE_UPDATEREQUEST_H
