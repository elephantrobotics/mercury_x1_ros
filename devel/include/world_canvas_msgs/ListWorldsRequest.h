// Generated by gencpp from file world_canvas_msgs/ListWorldsRequest.msg
// DO NOT EDIT!


#ifndef WORLD_CANVAS_MSGS_MESSAGE_LISTWORLDSREQUEST_H
#define WORLD_CANVAS_MSGS_MESSAGE_LISTWORLDSREQUEST_H


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
struct ListWorldsRequest_
{
  typedef ListWorldsRequest_<ContainerAllocator> Type;

  ListWorldsRequest_()
    {
    }
  ListWorldsRequest_(const ContainerAllocator& _alloc)
    {
  (void)_alloc;
    }







  typedef boost::shared_ptr< ::world_canvas_msgs::ListWorldsRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::world_canvas_msgs::ListWorldsRequest_<ContainerAllocator> const> ConstPtr;

}; // struct ListWorldsRequest_

typedef ::world_canvas_msgs::ListWorldsRequest_<std::allocator<void> > ListWorldsRequest;

typedef boost::shared_ptr< ::world_canvas_msgs::ListWorldsRequest > ListWorldsRequestPtr;
typedef boost::shared_ptr< ::world_canvas_msgs::ListWorldsRequest const> ListWorldsRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::world_canvas_msgs::ListWorldsRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::world_canvas_msgs::ListWorldsRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


} // namespace world_canvas_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::world_canvas_msgs::ListWorldsRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::world_canvas_msgs::ListWorldsRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::world_canvas_msgs::ListWorldsRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::world_canvas_msgs::ListWorldsRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::world_canvas_msgs::ListWorldsRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::world_canvas_msgs::ListWorldsRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::world_canvas_msgs::ListWorldsRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "d41d8cd98f00b204e9800998ecf8427e";
  }

  static const char* value(const ::world_canvas_msgs::ListWorldsRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xd41d8cd98f00b204ULL;
  static const uint64_t static_value2 = 0xe9800998ecf8427eULL;
};

template<class ContainerAllocator>
struct DataType< ::world_canvas_msgs::ListWorldsRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "world_canvas_msgs/ListWorldsRequest";
  }

  static const char* value(const ::world_canvas_msgs::ListWorldsRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::world_canvas_msgs::ListWorldsRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# Get a list of all the worlds in database.\n"
"# TODO: following this issue (https://github.com/corot/world_canvas/issues/20) we may\n"
"# enhance this service returning a list of WorldCanvas objects or something similar\n"
;
  }

  static const char* value(const ::world_canvas_msgs::ListWorldsRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::world_canvas_msgs::ListWorldsRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream&, T)
    {}

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct ListWorldsRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::world_canvas_msgs::ListWorldsRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream&, const std::string&, const ::world_canvas_msgs::ListWorldsRequest_<ContainerAllocator>&)
  {}
};

} // namespace message_operations
} // namespace ros

#endif // WORLD_CANVAS_MSGS_MESSAGE_LISTWORLDSREQUEST_H
