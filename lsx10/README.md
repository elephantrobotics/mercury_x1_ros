## Lslidar_M10_N10_V2.5.3_231110_ROS使用说明

## 1.工程介绍

​		Lslidar_M10_N10_V2.5.3_231110_ROS为linux环境下雷达ros驱动，适用于M10 ,M10_GPS,M10_P,M10_PLUS,N10,N10_PLUS 和 L10.版本雷达，程序在ubuntu 20.04 ros noetic，ubuntu18.04 ros melodic以及ubuntu16.04 ros kinetic下测试通过。

## 2.依赖

- ubuntu20.04 ros noetic/ubuntu18.04 ros melodic/ubuntu16.04 ros kinetic

- ros依赖

```bash
# 安装
sudo apt-get install ros-$ROS_DISTRO-pcl-ros ros-$ROS_DISTRO-pluginlib  ros-$ROS_DISTRO-pcl-conversions  ros-$ROS_DISTRO-diagnostic-updater
```

- 其他依赖

~~~bash
sudo apt-get install libpcap-dev
~~~



## 3.编译运行

### 3.1 编译

~~~bash
mkdir -p ~/lidar_ws/src  #lidar_ws支持自定义命名(禁止空格和中文)，src目录名不能改变
#将驱动压缩包解压缩放到~/lidar_ws/src 目录下
cd ~/lidar_ws
catkin_make
source devel/setup.bash
~~~

### 3.2 运行

运行单个雷达:

~~~bash
roslaunch lslidar_driver lslidar_net.launch 				#网口版雷达
roslaunch lslidar_driver lslidar_serial.launch 				#串口版雷达
~~~

运行多个雷达：

~~~bash
roslaunch lslidar_driver lslidar_net_double.launch			#两台网口版雷达
roslaunch lslidar_driver lslidar_serial_double.launch		#两台串口版雷达

roslaunch lslidar_driver lslidar_net_four.launch			#四台网口版雷达
roslaunch lslidar_driver lslidar_serial_four.launch			#四台串口版雷达
~~~

## 4.参数介绍

#### lslidar_serial.launch 文件内容如下，每个参数含义见注释说明。

~~~xml
<launch>
  <node pkg="lslidar_driver" type="lslidar_driver_node" name="lslidar_driver_node" output="screen">
    <param name="lidar_name" value="M10"/>     #雷达选择:M10 M10_P M10_PLUS M10_GPS N10 N10_PLUS L10
    <param name="serial_port" value="/dev/ttyUSB0"/>      #雷达连接的串口
    <param name="interface_selection" value="serial"/>    #接口选择:net 为网口,serial 为串口
    <param name="frame_id" value="laser_link"/>           #激光坐标
    <param name="scan_topic" value="scan"/>               #设置激光数据topic名称
    <param name="angle_disable_min" value="0.0"/>         #角度裁剪开始值
    <param name="angle_disable_max" value="0.0"/>         #角度裁剪结束值
    <param name="min_range" value="0.0"/>                 #雷达接收距离最小值
    <param name="max_range" value="100.0"/>               #雷达接收距离最大值
    <param name="use_gps_ts" value="false"/>              #雷达是否使用GPS授时
    <param name="compensation" value="false"/>            #雷达是否使用角度补偿功能
    <param name="pubScan" value="true"/>                  #雷达是否发布scan话题
    <param name="pubPointCloud2" value="false"/>          #雷达是否发布pointcloud2话题
    <param name="high_reflection" value="false"/>         #M10_P雷达需填写该值,若不确定，请联系技术支持。
    <!--param name="in_file_name" value="$(find lslidar_driver)/pcap/xxx.txt"/-->   #驱动是否使用txt文件读取功能
  </node>
    <node name="rviz" pkg="rviz" type="rviz" args="-d $(find lslidar_driver)/rviz/lslidar.rviz" output="screen"/>      #雷达点云配置
</launch>
~~~



#### lslidar_net.launch 文件内容如下，每个参数含义见注释说明。

~~~xml
<launch>
  <node pkg="lslidar_driver" type="lslidar_driver_node" name="lslidar_driver_node" output="screen">
    <param name="frame_id" value="laser_link"/>          #激光坐标
    <param name="device_ip" value="192.168.1.200"/>      #雷达源IP
    <param name="device_port" value="2368"/>             #雷达目的端口号
    <param name="device_ip_difop" value="192.168.1.102"/>#雷达目的ip
    <param name="difop_port" value="2369"/>              #雷达源端口号
    <param name="lidar_name" value="M10"/>               #雷达选择:M10 M10_P M10_PLUS M10_GPS N10 N10_PLUS L10
    <param name="interface_selection" value="net"/>      #接口选择:net 为网口,serial 为串口
    <param name="add_multicast" value="false"/>          #是否启动组播。
    <param name="group_ip" value="224.1.1.2"/>           #组播ip。
    <param name="scan_topic" value="scan"/>              #设置激光数据topic名称
    <param name="angle_disable_min" value="0.0"/>        #角度裁剪开始值
    <param name="angle_disable_max" value="0.0"/>        #角度裁剪结束值
    <param name="min_range" value="0"/>                  #雷达接收距离最小值
    <param name="max_range" value="100.0"/>              #雷达接收距离最大值
    <param name="use_gps_ts" value="false"/>             #雷达是否使用GPS授时
    <param name="compensation" value="false"/>           #雷达是否使用角度补偿功能
    <param name="pubScan" value="true"/>                 #雷达是否发布scan话题
    <param name="pubPointCloud2" value="false"/>         #雷达是否发布pointcloud2话题
    <param name="high_reflection" value="false"/>        #M10_P雷达需填写该值,若不确定，请联系技术支持。
    <!--param name="pcap" value="$(find lslidar_driver)/pcap/xxx.pcap"/-->     #雷达是否使用pcap包读取功能
  </node>
    <node name="rviz" pkg="rviz" type="rviz" args="-d $(find lslidar_driver)/rviz/lslidar.rviz" output="screen"/>      #雷达点云配置
</launch>
~~~



## 5.命令控制雷达

#### 运行驱动后，新开一个端口

~~~bash
#M10 M10_GPS M10_PLUS N10 N10_PLUS 雷达
rostopic pub -1 /lslidar_order std_msgs/Int8 "data: 0"		#雷达停止旋转
rostopic pub -1 /lslidar_order std_msgs/Int8 "data: 1"		#雷达开始旋转

#M10 M10_GPS M10_PLUS 雷达
rostopic pub -1 /lslidar_order std_msgs/Int8 "data: 2"		#雷达点云不滤波
rostopic pub -1 /lslidar_order std_msgs/Int8 "data: 3"		#雷达点云正常滤波
rostopic pub -1 /lslidar_order std_msgs/Int8 "data: 4"		#雷达近距离滤波
rostopic pub -1 /lslidar_order std_msgs/Int8 "data: 100"    #雷达发设备包

#M10启停雷达
rostopic pub -1 /lslidar_order std_msgs/Int8 "data: 30"		#雷达停转并停止发数据
~~~





### 组播模式：

- 上位机设置雷达开启组播模式

- 修改launch文件以下参数

  ~~~shell
  <param name="add_multicast" value="false"/>               #是否添加组播
  <param name="group_ip" value="224.1.1.2"/>                #组播的ip
  ~~~

- 运行以下指令将电脑加入组内（将指令中的enp2s0替换为用户电脑的网卡名,可用ifconfig查看网卡名)

  ~~~shell
  ifconfig
  sudo route add -net 224.0.0.0/4 dev enp2s0
  ~~~



### 离线模式：

#### 播pcap包

- 把录制好的pcap文件，拷贝到lslidar_driver/pcap文件夹下。

- 修改launch文件以下参数

  ~~~shell
  #取消注释
      <param name="pcap" value="$(find lslidar_cx_driver)/pcap/xxx.pcap" />   #pcap包路径，加载pcap包时打开此注释
  ~~~



#### 播txt文件

- 把录制好的txt文件 路径写入launch文件。

~~~shell
#取消注释
   <!--param name="in_file_name" value="$(find lslidar_driver)/pcap/xxx.txt"/-->   #txt文件路径，加载txt文件时打开此注释
~~~





