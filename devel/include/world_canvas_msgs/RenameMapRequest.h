// Generated by gencpp from file world_canvas_msgs/RenameMapRequest.msg
// DO NOT EDIT!


#ifndef WORLD_CANVAS_MSGS_MESSAGE_RENAMEMAPREQUEST_H
#define WORLD_CANVAS_MSGS_MESSAGE_RENAMEMAPREQUEST_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace world_canvas_msgs
{
template <class ContainerAllocator>
struct RenameMapRequest_
{
  typedef RenameMapRequest_<ContainerAllocator> Type;

  RenameMapRequest_()
    : map_id()
    , new_name()  {
    }
  RenameMapRequest_(const ContainerAllocator& _alloc)
    : map_id(_alloc)
    , new_name(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _map_id_type;
  _map_id_type map_id;

   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _new_name_type;
  _new_name_type new_name;





  typedef boost::shared_ptr< ::world_canvas_msgs::RenameMapRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::world_canvas_msgs::RenameMapRequest_<ContainerAllocator> const> ConstPtr;

}; // struct RenameMapRequest_

typedef ::world_canvas_msgs::RenameMapRequest_<std::allocator<void> > RenameMapRequest;

typedef boost::shared_ptr< ::world_canvas_msgs::RenameMapRequest > RenameMapRequestPtr;
typedef boost::shared_ptr< ::world_canvas_msgs::RenameMapRequest const> RenameMapRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::world_canvas_msgs::RenameMapRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::world_canvas_msgs::RenameMapRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::world_canvas_msgs::RenameMapRequest_<ContainerAllocator1> & lhs, const ::world_canvas_msgs::RenameMapRequest_<ContainerAllocator2> & rhs)
{
  return lhs.map_id == rhs.map_id &&
    lhs.new_name == rhs.new_name;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::world_canvas_msgs::RenameMapRequest_<ContainerAllocator1> & lhs, const ::world_canvas_msgs::RenameMapRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace world_canvas_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::world_canvas_msgs::RenameMapRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::world_canvas_msgs::RenameMapRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::world_canvas_msgs::RenameMapRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::world_canvas_msgs::RenameMapRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::world_canvas_msgs::RenameMapRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::world_canvas_msgs::RenameMapRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::world_canvas_msgs::RenameMapRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "94f4d84fa2d3173899807933af417784";
  }

  static const char* value(const ::world_canvas_msgs::RenameMapRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x94f4d84fa2d31738ULL;
  static const uint64_t static_value2 = 0x99807933af417784ULL;
};

template<class ContainerAllocator>
struct DataType< ::world_canvas_msgs::RenameMapRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "world_canvas_msgs/RenameMapRequest";
  }

  static const char* value(const ::world_canvas_msgs::RenameMapRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::world_canvas_msgs::RenameMapRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# Service used to rename a given map.\n"
"\n"
"string map_id\n"
"string new_name\n"
;
  }

  static const char* value(const ::world_canvas_msgs::RenameMapRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::world_canvas_msgs::RenameMapRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.map_id);
      stream.next(m.new_name);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct RenameMapRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::world_canvas_msgs::RenameMapRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::world_canvas_msgs::RenameMapRequest_<ContainerAllocator>& v)
  {
    s << indent << "map_id: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.map_id);
    s << indent << "new_name: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.new_name);
  }
};

} // namespace message_operations
} // namespace ros

#endif // WORLD_CANVAS_MSGS_MESSAGE_RENAMEMAPREQUEST_H
