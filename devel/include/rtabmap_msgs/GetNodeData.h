// Generated by gencpp from file rtabmap_msgs/GetNodeData.msg
// DO NOT EDIT!


#ifndef RTABMAP_MSGS_MESSAGE_GETNODEDATA_H
#define RTABMAP_MSGS_MESSAGE_GETNODEDATA_H

#include <ros/service_traits.h>


#include <rtabmap_msgs/GetNodeDataRequest.h>
#include <rtabmap_msgs/GetNodeDataResponse.h>


namespace rtabmap_msgs
{

struct GetNodeData
{

typedef GetNodeDataRequest Request;
typedef GetNodeDataResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct GetNodeData
} // namespace rtabmap_msgs


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::rtabmap_msgs::GetNodeData > {
  static const char* value()
  {
    return "711b3145b261926a9355e15312731e23";
  }

  static const char* value(const ::rtabmap_msgs::GetNodeData&) { return value(); }
};

template<>
struct DataType< ::rtabmap_msgs::GetNodeData > {
  static const char* value()
  {
    return "rtabmap_msgs/GetNodeData";
  }

  static const char* value(const ::rtabmap_msgs::GetNodeData&) { return value(); }
};


// service_traits::MD5Sum< ::rtabmap_msgs::GetNodeDataRequest> should match
// service_traits::MD5Sum< ::rtabmap_msgs::GetNodeData >
template<>
struct MD5Sum< ::rtabmap_msgs::GetNodeDataRequest>
{
  static const char* value()
  {
    return MD5Sum< ::rtabmap_msgs::GetNodeData >::value();
  }
  static const char* value(const ::rtabmap_msgs::GetNodeDataRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::rtabmap_msgs::GetNodeDataRequest> should match
// service_traits::DataType< ::rtabmap_msgs::GetNodeData >
template<>
struct DataType< ::rtabmap_msgs::GetNodeDataRequest>
{
  static const char* value()
  {
    return DataType< ::rtabmap_msgs::GetNodeData >::value();
  }
  static const char* value(const ::rtabmap_msgs::GetNodeDataRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::rtabmap_msgs::GetNodeDataResponse> should match
// service_traits::MD5Sum< ::rtabmap_msgs::GetNodeData >
template<>
struct MD5Sum< ::rtabmap_msgs::GetNodeDataResponse>
{
  static const char* value()
  {
    return MD5Sum< ::rtabmap_msgs::GetNodeData >::value();
  }
  static const char* value(const ::rtabmap_msgs::GetNodeDataResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::rtabmap_msgs::GetNodeDataResponse> should match
// service_traits::DataType< ::rtabmap_msgs::GetNodeData >
template<>
struct DataType< ::rtabmap_msgs::GetNodeDataResponse>
{
  static const char* value()
  {
    return DataType< ::rtabmap_msgs::GetNodeData >::value();
  }
  static const char* value(const ::rtabmap_msgs::GetNodeDataResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // RTABMAP_MSGS_MESSAGE_GETNODEDATA_H
