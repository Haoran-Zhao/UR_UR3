// Generated by gencpp from file simulation_ur3/Tracker.msg
// DO NOT EDIT!


#ifndef SIMULATION_UR3_MESSAGE_TRACKER_H
#define SIMULATION_UR3_MESSAGE_TRACKER_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace simulation_ur3
{
template <class ContainerAllocator>
struct Tracker_
{
  typedef Tracker_<ContainerAllocator> Type;

  Tracker_()
    : up(0.0)
    , down(0.0)
    , left(0.0)
    , right(0.0)
    , init(false)  {
    }
  Tracker_(const ContainerAllocator& _alloc)
    : up(0.0)
    , down(0.0)
    , left(0.0)
    , right(0.0)
    , init(false)  {
  (void)_alloc;
    }



   typedef double _up_type;
  _up_type up;

   typedef double _down_type;
  _down_type down;

   typedef double _left_type;
  _left_type left;

   typedef double _right_type;
  _right_type right;

   typedef uint8_t _init_type;
  _init_type init;





  typedef boost::shared_ptr< ::simulation_ur3::Tracker_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::simulation_ur3::Tracker_<ContainerAllocator> const> ConstPtr;

}; // struct Tracker_

typedef ::simulation_ur3::Tracker_<std::allocator<void> > Tracker;

typedef boost::shared_ptr< ::simulation_ur3::Tracker > TrackerPtr;
typedef boost::shared_ptr< ::simulation_ur3::Tracker const> TrackerConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::simulation_ur3::Tracker_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::simulation_ur3::Tracker_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace simulation_ur3

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'simulation_ur3': ['/home/haoran/US_UR3/src/simulation_ur3/msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::simulation_ur3::Tracker_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::simulation_ur3::Tracker_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::simulation_ur3::Tracker_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::simulation_ur3::Tracker_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::simulation_ur3::Tracker_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::simulation_ur3::Tracker_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::simulation_ur3::Tracker_<ContainerAllocator> >
{
  static const char* value()
  {
    return "4403fe424018d01642c7d5f64d2fbe63";
  }

  static const char* value(const ::simulation_ur3::Tracker_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x4403fe424018d016ULL;
  static const uint64_t static_value2 = 0x42c7d5f64d2fbe63ULL;
};

template<class ContainerAllocator>
struct DataType< ::simulation_ur3::Tracker_<ContainerAllocator> >
{
  static const char* value()
  {
    return "simulation_ur3/Tracker";
  }

  static const char* value(const ::simulation_ur3::Tracker_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::simulation_ur3::Tracker_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# message type to describe the tracking information of the blocks\n\
# to be published as a topic\n\
\n\
float64 up  # move up\n\
float64 down  # move down\n\
float64 left  # move left\n\
float64 right  # move down\n\
bool init #initialize pose\n\
";
  }

  static const char* value(const ::simulation_ur3::Tracker_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::simulation_ur3::Tracker_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.up);
      stream.next(m.down);
      stream.next(m.left);
      stream.next(m.right);
      stream.next(m.init);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Tracker_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::simulation_ur3::Tracker_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::simulation_ur3::Tracker_<ContainerAllocator>& v)
  {
    s << indent << "up: ";
    Printer<double>::stream(s, indent + "  ", v.up);
    s << indent << "down: ";
    Printer<double>::stream(s, indent + "  ", v.down);
    s << indent << "left: ";
    Printer<double>::stream(s, indent + "  ", v.left);
    s << indent << "right: ";
    Printer<double>::stream(s, indent + "  ", v.right);
    s << indent << "init: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.init);
  }
};

} // namespace message_operations
} // namespace ros

#endif // SIMULATION_UR3_MESSAGE_TRACKER_H
