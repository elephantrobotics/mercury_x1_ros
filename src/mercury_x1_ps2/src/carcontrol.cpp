#include<carcontrol.h>
#include "ros/ros.h" 
#include "std_msgs/String.h"
#include "geometry_msgs/Twist.h"
#include <pthread.h>
int ps2_fd;
int len;
ps2_map_t map;
int ps2_map_read(int ps2_fd, ps2_map_t *map)
{
    int len, type, number, value;
    struct js_event js;
 
    len = read(ps2_fd, &js, sizeof(struct js_event));
    if (len < 0)
    {
        perror("read");
        return -1;
    }
 
    type = js.type;
    number = js.number;
    value = js.value;
 
    map->time = js.time;
 
    if (type == JS_EVENT_BUTTON)
    {
        switch (number)
        {
            case PS2_BUTTON_A:
                map->a = value;
                break;
 
            case PS2_BUTTON_B:
                map->b = value;
                break;
 
            case PS2_BUTTON_X:
                map->x = value;
                break;
 
            case PS2_BUTTON_Y:
                map->y = value;
                break;
 
            case PS2_BUTTON_L1:
                map->l1 = value;
                break;
 
            case PS2_BUTTON_R1:
                map->r1 = value;
                break;
 
            case PS2_BUTTON_SELECT:
                map->select = value;
                break;
 
            case PS2_BUTTON_START:
                map->start = value;
                break;
 
            case PS2_BUTTON_MODE:
                map->mode = value;
                break;
 
            case PS2_BUTTON_LO:
                map->lo = value;
                break;
 
            case PS2_BUTTON_RO:
                map->ro = value;
                break;
 
            default:
                break;
        }
    }
    else if (type == JS_EVENT_AXIS)
    {
        switch(number)
        {
            case PS2_AXIS_LX:
                map->lx = value;
                break;
 
            case PS2_AXIS_LY:
                map->ly = value;
                break;
 
            case PS2_AXIS_RX:
                map->rx = value;
                break;
 
            case PS2_AXIS_RY:
                map->ry = value;
                break;
 
            case PS2_AXIS_L2:
                map->l2 = value;
                break;
 
            case PS2_AXIS_R2:
                map->r2 = value;
                break;
 
            case PS2_AXIS_XX:
                map->xx = value;
                break;
 
            case PS2_AXIS_YY:
                map->yy = value;
                break;
 
            default:
                break;
        }
    }
 
    return len;
}
int ps2_open(char *file_name)
{
    int ps2_fd;
 
    ps2_fd = open(file_name, O_RDONLY);
    if (ps2_fd < 0)
    {
        perror("open");
        return -1;
    }
 
    return ps2_fd;
}
//struct ThreadData{
    //ps2_map_t map;
    //int ps2_fdd;
//};
void* ps2_read_thread(void*){
    //ThreadData* data = (ThreadData*)arg;
    
    memset(&map, 0, sizeof(ps2_map_t));
    ps2_fd = ps2_open("/dev/input/js0");
    
    while(1){
        ps2_map_read(ps2_fd,&map);
        usleep(10*1000);
    }
    return NULL;
}

void *ps2ReadThread(void *data); 
void ps2_close(int ps2_fd)
{
    close(ps2_fd);
    return;
}
 
int main(int argc, char* argv[])
{
    ros::init(argc,argv,"publisher");
    ros::NodeHandle n;
    ros::Publisher pub = n.advertise<geometry_msgs::Twist>("/cmd_vel",1000);
    ros::Rate loop_rate(10);
    geometry_msgs::Twist msg;
    //thread control_thread(controlFunction, ps2_fd, pub);
    //int ps2_fd ;
    //ps2_map_t map;
    int type;
    int axis_value, button_value;
    int number_of_axis, number_of_buttons ;
    float x = 0;
    float y = 0;
    float theta = 0;
    //std_msgs::String int_msg;
    //int_msg.data = std::to_string(11);
    int status=0;
    

    //memset(&map, 0, sizeof(ps2_map_t));
 
    //ps2_fd = ps2_open("/dev/input/js0");
    //if(ps2_fd < 0)
    //{
        //return -1;
    //}
    //ThreadData thread_data;
    //thread_data.ps2_fdd = ps2_fd;
    pthread_t thread_id;
    pthread_create(&thread_id,NULL,ps2_read_thread,NULL);
    if(ps2_fd < 0)
    {
        return -1;
    }
    while (ros::ok())
    {
        //pub.publish(int_msg);
        //if(ps2_map_read(ps2_fd, &map)>0)
        //{
        ///  status =1;
        // }
        if (len < 0)
        {
            usleep(10*1000);
            continue;
        }
    //    while(status == 1)
      //  {
            // printf("\rTime:%8d A:%d B:%d X:%d Y:%d L1:%d R1:%d select:%d start:%d mode:%d LO:%d RO:%d XX:%-6d YY:%-6d LX:%-6d LY:%-6d RX:%-6d RY:%-6d L2:%-6d R2:%-6d",
            //         map.time, map.a, map.b, map.x, map.y, map.l1, map.r1, map.select, map.start, map.mode, map.lo, map.ro,
            //         map.xx, map.yy, map.lx, map.ly, map.rx, map.ry, map.l2, map.r2);
                //if(ps2_map_read(ps2_fd, &map)<=0)
                //{
                //  break;
                //}
                
                if(map.x == 1){
                    status =0;
                    x = 0;
                    y = 0;
                    theta = 0;
                   // break;
                }else{
                    //status =1;
                    if(map.xx == 0 && map.yy == 0 && map.l1 ==0 && map.r1 ==0 ){
                    status =0;
                    x = 0;
                    y = 0;
                    theta = 0;
                    //break;
                    }     
                    if(map.yy == -32767){
                    x = 0.2;
                    // y = 0;
                    // theta = 0;
                    }
                    if(map.yy == 32767){
                    x = -0.2;
                    // y = 0;
                    // theta = 0;
                    }
                    if(map.yy == 0){
                    x = 0;
                    // y = 0;
                    // theta = 0;
                    }
                    if(map.xx == -32767){
                    // x = 0;
                    y = 0;
                    // theta = 0;
                    }
                    if(map.xx == 32767){
                    // x = 0;
                    y = 0;
                    // theta = 0;
                    }
                    if(map.xx == 0){
                    // x = 0;
                    y = 0;
                    // theta = 0;
                    }
                    if(map.l1 == 1){
                    // x = 0;
                    // y = 0;
                    theta = 0.2;
                    }
                    if(map.r1 == 1){
                    // x = 0;
                    // y = 0;
                    theta = -0.2;
                    } 
                    if(map.r1 == 0 && map.l1 == 0){
                    // x = 0;
                    // y = 0;
                    theta = 0;
                    }       
                }
            msg.linear.x = x;
            msg.linear.y = y;
            msg.linear.z = 0;
            msg.angular.x = 0;
            msg.angular.y = 0;
            msg.angular.z = theta;
            pub.publish(msg);
            //msg.linear.x = 1;
            ros::spinOnce();
            loop_rate.sleep();
            fflush(stdout);
       // }
    }
    ps2_close(ps2_fd);
    pthread_join(thread_id,NULL);
    return 0;
}
