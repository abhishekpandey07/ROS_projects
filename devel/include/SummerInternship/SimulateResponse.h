// Generated by gencpp from file SummerInternship/SimulateResponse.msg
// DO NOT EDIT!


#ifndef SUMMERINTERNSHIP_MESSAGE_SIMULATERESPONSE_H
#define SUMMERINTERNSHIP_MESSAGE_SIMULATERESPONSE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace SummerInternship
{
template <class ContainerAllocator>
struct SimulateResponse_
{
  typedef SimulateResponse_<ContainerAllocator> Type;

  SimulateResponse_()
    : force(0.0)  {
    }
  SimulateResponse_(const ContainerAllocator& _alloc)
    : force(0.0)  {
  (void)_alloc;
    }



   typedef double _force_type;
  _force_type force;





  typedef boost::shared_ptr< ::SummerInternship::SimulateResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::SummerInternship::SimulateResponse_<ContainerAllocator> const> ConstPtr;

}; // struct SimulateResponse_

typedef ::SummerInternship::SimulateResponse_<std::allocator<void> > SimulateResponse;

typedef boost::shared_ptr< ::SummerInternship::SimulateResponse > SimulateResponsePtr;
typedef boost::shared_ptr< ::SummerInternship::SimulateResponse const> SimulateResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::SummerInternship::SimulateResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::SummerInternship::SimulateResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace SummerInternship

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/melodic/share/std_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::SummerInternship::SimulateResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::SummerInternship::SimulateResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::SummerInternship::SimulateResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::SummerInternship::SimulateResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::SummerInternship::SimulateResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::SummerInternship::SimulateResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::SummerInternship::SimulateResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "e18a51329659ac6263f87aaf9a01fe62";
  }

  static const char* value(const ::SummerInternship::SimulateResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xe18a51329659ac62ULL;
  static const uint64_t static_value2 = 0x63f87aaf9a01fe62ULL;
};

template<class ContainerAllocator>
struct DataType< ::SummerInternship::SimulateResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "SummerInternship/SimulateResponse";
  }

  static const char* value(const ::SummerInternship::SimulateResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::SummerInternship::SimulateResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float64 force\n\
\n\
";
  }

  static const char* value(const ::SummerInternship::SimulateResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::SummerInternship::SimulateResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.force);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct SimulateResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::SummerInternship::SimulateResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::SummerInternship::SimulateResponse_<ContainerAllocator>& v)
  {
    s << indent << "force: ";
    Printer<double>::stream(s, indent + "  ", v.force);
  }
};

} // namespace message_operations
} // namespace ros

#endif // SUMMERINTERNSHIP_MESSAGE_SIMULATERESPONSE_H
