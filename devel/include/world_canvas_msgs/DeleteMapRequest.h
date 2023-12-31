// Generated by gencpp from file world_canvas_msgs/DeleteMapRequest.msg
// DO NOT EDIT!


#ifndef WORLD_CANVAS_MSGS_MESSAGE_DELETEMAPREQUEST_H
#define WORLD_CANVAS_MSGS_MESSAGE_DELETEMAPREQUEST_H


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
struct DeleteMapRequest_
{
  typedef DeleteMapRequest_<ContainerAllocator> Type;

  DeleteMapRequest_()
    : map_id()  {
    }
  DeleteMapRequest_(const ContainerAllocator& _alloc)
    : map_id(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _map_id_type;
  _map_id_type map_id;





  typedef boost::shared_ptr< ::world_canvas_msgs::DeleteMapRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::world_canvas_msgs::DeleteMapRequest_<ContainerAllocator> const> ConstPtr;

}; // struct DeleteMapRequest_

typedef ::world_canvas_msgs::DeleteMapRequest_<std::allocator<void> > DeleteMapRequest;

typedef boost::shared_ptr< ::world_canvas_msgs::DeleteMapRequest > DeleteMapRequestPtr;
typedef boost::shared_ptr< ::world_canvas_msgs::DeleteMapRequest const> DeleteMapRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::world_canvas_msgs::DeleteMapRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::world_canvas_msgs::DeleteMapRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::world_canvas_msgs::DeleteMapRequest_<ContainerAllocator1> & lhs, const ::world_canvas_msgs::DeleteMapRequest_<ContainerAllocator2> & rhs)
{
  return lhs.map_id == rhs.map_id;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::world_canvas_msgs::DeleteMapRequest_<ContainerAllocator1> & lhs, const ::world_canvas_msgs::DeleteMapRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace world_canvas_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::world_canvas_msgs::DeleteMapRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::world_canvas_msgs::DeleteMapRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::world_canvas_msgs::DeleteMapRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::world_canvas_msgs::DeleteMapRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::world_canvas_msgs::DeleteMapRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::world_canvas_msgs::DeleteMapRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::world_canvas_msgs::DeleteMapRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "d742ddbd5e3e8937162044ae4b300275";
  }

  static const char* value(const ::world_canvas_msgs::DeleteMapRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xd742ddbd5e3e8937ULL;
  static const uint64_t static_value2 = 0x162044ae4b300275ULL;
};

template<class ContainerAllocator>
struct DataType< ::world_canvas_msgs::DeleteMapRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "world_canvas_msgs/DeleteMapRequest";
  }

  static const char* value(const ::world_canvas_msgs::DeleteMapRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::world_canvas_msgs::DeleteMapRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# Service used to delete a given map\n"
"\n"
"string map_id\n"
;
  }

  static const char* value(const ::world_canvas_msgs::DeleteMapRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::world_canvas_msgs::DeleteMapRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.map_id);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct DeleteMapRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::world_canvas_msgs::DeleteMapRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::world_canvas_msgs::DeleteMapRequest_<ContainerAllocator>& v)
  {
    s << indent << "map_id: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.map_id);
  }
};

} // namespace message_operations
} // namespace ros

#endif // WORLD_CANVAS_MSGS_MESSAGE_DELETEMAPREQUEST_H
