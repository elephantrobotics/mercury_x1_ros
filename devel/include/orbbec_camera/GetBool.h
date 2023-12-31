// Generated by gencpp from file orbbec_camera/GetBool.msg
// DO NOT EDIT!


#ifndef ORBBEC_CAMERA_MESSAGE_GETBOOL_H
#define ORBBEC_CAMERA_MESSAGE_GETBOOL_H

#include <ros/service_traits.h>


#include <orbbec_camera/GetBoolRequest.h>
#include <orbbec_camera/GetBoolResponse.h>


namespace orbbec_camera
{

struct GetBool
{

typedef GetBoolRequest Request;
typedef GetBoolResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct GetBool
} // namespace orbbec_camera


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::orbbec_camera::GetBool > {
  static const char* value()
  {
    return "43f76a855b16e988566e147b692f2fab";
  }

  static const char* value(const ::orbbec_camera::GetBool&) { return value(); }
};

template<>
struct DataType< ::orbbec_camera::GetBool > {
  static const char* value()
  {
    return "orbbec_camera/GetBool";
  }

  static const char* value(const ::orbbec_camera::GetBool&) { return value(); }
};


// service_traits::MD5Sum< ::orbbec_camera::GetBoolRequest> should match
// service_traits::MD5Sum< ::orbbec_camera::GetBool >
template<>
struct MD5Sum< ::orbbec_camera::GetBoolRequest>
{
  static const char* value()
  {
    return MD5Sum< ::orbbec_camera::GetBool >::value();
  }
  static const char* value(const ::orbbec_camera::GetBoolRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::orbbec_camera::GetBoolRequest> should match
// service_traits::DataType< ::orbbec_camera::GetBool >
template<>
struct DataType< ::orbbec_camera::GetBoolRequest>
{
  static const char* value()
  {
    return DataType< ::orbbec_camera::GetBool >::value();
  }
  static const char* value(const ::orbbec_camera::GetBoolRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::orbbec_camera::GetBoolResponse> should match
// service_traits::MD5Sum< ::orbbec_camera::GetBool >
template<>
struct MD5Sum< ::orbbec_camera::GetBoolResponse>
{
  static const char* value()
  {
    return MD5Sum< ::orbbec_camera::GetBool >::value();
  }
  static const char* value(const ::orbbec_camera::GetBoolResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::orbbec_camera::GetBoolResponse> should match
// service_traits::DataType< ::orbbec_camera::GetBool >
template<>
struct DataType< ::orbbec_camera::GetBoolResponse>
{
  static const char* value()
  {
    return DataType< ::orbbec_camera::GetBool >::value();
  }
  static const char* value(const ::orbbec_camera::GetBoolResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // ORBBEC_CAMERA_MESSAGE_GETBOOL_H
