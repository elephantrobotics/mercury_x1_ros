// Generated by gencpp from file world_canvas_msgs/EditAnnotationsDataResponse.msg
// DO NOT EDIT!


#ifndef WORLD_CANVAS_MSGS_MESSAGE_EDITANNOTATIONSDATARESPONSE_H
#define WORLD_CANVAS_MSGS_MESSAGE_EDITANNOTATIONSDATARESPONSE_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <world_canvas_msgs/AnnotationData.h>

namespace world_canvas_msgs
{
template <class ContainerAllocator>
struct EditAnnotationsDataResponse_
{
  typedef EditAnnotationsDataResponse_<ContainerAllocator> Type;

  EditAnnotationsDataResponse_()
    : action(0)
    , data()  {
    }
  EditAnnotationsDataResponse_(const ContainerAllocator& _alloc)
    : action(0)
    , data(_alloc)  {
  (void)_alloc;
    }



   typedef uint8_t _action_type;
  _action_type action;

   typedef  ::world_canvas_msgs::AnnotationData_<ContainerAllocator>  _data_type;
  _data_type data;



// reducing the odds to have name collisions with Windows.h 
#if defined(_WIN32) && defined(UPDATE)
  #undef UPDATE
#endif
#if defined(_WIN32) && defined(DELETE)
  #undef DELETE
#endif
#if defined(_WIN32) && defined(CANCEL)
  #undef CANCEL
#endif

  enum {
    UPDATE = 10u,
    DELETE = 12u,
    CANCEL = 13u,
  };


  typedef boost::shared_ptr< ::world_canvas_msgs::EditAnnotationsDataResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::world_canvas_msgs::EditAnnotationsDataResponse_<ContainerAllocator> const> ConstPtr;

}; // struct EditAnnotationsDataResponse_

typedef ::world_canvas_msgs::EditAnnotationsDataResponse_<std::allocator<void> > EditAnnotationsDataResponse;

typedef boost::shared_ptr< ::world_canvas_msgs::EditAnnotationsDataResponse > EditAnnotationsDataResponsePtr;
typedef boost::shared_ptr< ::world_canvas_msgs::EditAnnotationsDataResponse const> EditAnnotationsDataResponseConstPtr;

// constants requiring out of line definition

   

   

   



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::world_canvas_msgs::EditAnnotationsDataResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::world_canvas_msgs::EditAnnotationsDataResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::world_canvas_msgs::EditAnnotationsDataResponse_<ContainerAllocator1> & lhs, const ::world_canvas_msgs::EditAnnotationsDataResponse_<ContainerAllocator2> & rhs)
{
  return lhs.action == rhs.action &&
    lhs.data == rhs.data;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::world_canvas_msgs::EditAnnotationsDataResponse_<ContainerAllocator1> & lhs, const ::world_canvas_msgs::EditAnnotationsDataResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace world_canvas_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::world_canvas_msgs::EditAnnotationsDataResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::world_canvas_msgs::EditAnnotationsDataResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::world_canvas_msgs::EditAnnotationsDataResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::world_canvas_msgs::EditAnnotationsDataResponse_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::world_canvas_msgs::EditAnnotationsDataResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::world_canvas_msgs::EditAnnotationsDataResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::world_canvas_msgs::EditAnnotationsDataResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "f3d451f2a08e1dc3084d378560b01c8e";
  }

  static const char* value(const ::world_canvas_msgs::EditAnnotationsDataResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xf3d451f2a08e1dc3ULL;
  static const uint64_t static_value2 = 0x084d378560b01c8eULL;
};

template<class ContainerAllocator>
struct DataType< ::world_canvas_msgs::EditAnnotationsDataResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "world_canvas_msgs/EditAnnotationsDataResponse";
  }

  static const char* value(const ::world_canvas_msgs::EditAnnotationsDataResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::world_canvas_msgs::EditAnnotationsDataResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "uint8 UPDATE=10\n"
"uint8 DELETE=12\n"
"uint8 CANCEL=13\n"
"\n"
"uint8 action\n"
"\n"
"AnnotationData data \n"
"\n"
"================================================================================\n"
"MSG: world_canvas_msgs/AnnotationData\n"
"# Data for an element in a semantic map stored as a byte array generated by ros::serialization\n"
"# These objects are unique, although they can be referenced by one or more annotations\n"
"#  - id   : Object unique id; data_id field on Annotation messages point to this uuid\n"
"#  - type : Object type; duplicated from annotation for convenience on deserialization\n"
"#  - data : Serialized data\n"
"uuid_msgs/UniqueID id\n"
"string type\n"
"uint8[] data\n"
"\n"
"================================================================================\n"
"MSG: uuid_msgs/UniqueID\n"
"# A universally unique identifier (UUID).\n"
"#\n"
"#  http://en.wikipedia.org/wiki/Universally_unique_identifier\n"
"#  http://tools.ietf.org/html/rfc4122.html\n"
"\n"
"uint8[16] uuid\n"
;
  }

  static const char* value(const ::world_canvas_msgs::EditAnnotationsDataResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::world_canvas_msgs::EditAnnotationsDataResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.action);
      stream.next(m.data);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct EditAnnotationsDataResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::world_canvas_msgs::EditAnnotationsDataResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::world_canvas_msgs::EditAnnotationsDataResponse_<ContainerAllocator>& v)
  {
    s << indent << "action: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.action);
    s << indent << "data: ";
    s << std::endl;
    Printer< ::world_canvas_msgs::AnnotationData_<ContainerAllocator> >::stream(s, indent + "  ", v.data);
  }
};

} // namespace message_operations
} // namespace ros

#endif // WORLD_CANVAS_MSGS_MESSAGE_EDITANNOTATIONSDATARESPONSE_H
