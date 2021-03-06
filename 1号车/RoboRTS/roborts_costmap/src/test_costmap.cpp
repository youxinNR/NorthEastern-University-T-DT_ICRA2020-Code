/****************************************************************************
 *  Copyright (C) 2019 RoboMaster.
 *
 *  This program is free software: you can redistribute it and/or modify
 *  it under the terms of the GNU General Public License as published by
 *  the Free Software Foundation, either version 3 of the License, or
 *  (at your option) any later version.
 *
 *  This program is distributed in the hope that it will be useful,
 *  but WITHOUT ANY WARRANTY; without even the implied warranty of 
 *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 *  GNU General Public License for more details.
 *
 *  You should have received a copy of the GNU General Public License
 *  along with this program. If not, see <http://www.gnu.org/licenses/>.
 ***************************************************************************/
/*********************************************************************
 *
 * Software License Agreement (BSD License)
 *
 *  Copyright (c) 2008, 2013, Willow Garage, Inc.
 *  All rights reserved.
 *
 *  Redistribution and use in source and binary forms, with or without
 *  modification, are permitted provided that the following conditions
 *  are met:
 *
 *   * Redistributions of source code must retain the above copyright
 *     notice, this list of conditions and the following disclaimer.
 *   * Redistributions in binary form must reproduce the above
 *     copyright notice, this list of conditions and the following
 *     disclaimer in the documentation and/or other materials provided
 *     with the distribution.
 *   * Neither the name of Willow Garage, Inc. nor the names of its
 *     contributors may be used to endorse or promote products derived
 *     from this software without specific prior written permission.
 *
 *  THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
 *  "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
 *  LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS
 *  FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE
 *  COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT,
 *  INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING,
 *  BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
 *  LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
 *  CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
 *  LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN
 *  ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
 *  POSSIBILITY OF SUCH DAMAGE.
 *
 *********************************************************************/

#include <thread>
#include <csignal>

#include "costmap_interface.h"

#include "ros/ros.h"
#include "tf/transform_listener.h"
#include "sensor_msgs/PointCloud.h"
#include "tf/message_filter.h"
#include "message_filters/subscriber.h"
//#include "laser_geometry/laser_geometry.h"
#include <laser_geometry/laser_geometry.h>

#include <geometry_msgs/PoseStamped.h>
class LaserScanToPointCloud{
 
public:
 
   ros::NodeHandle n_;
   laser_geometry::LaserProjection projector_;
   tf::TransformListener listener_;
   message_filters::Subscriber<sensor_msgs::LaserScan> laser_sub_;
   tf::MessageFilter<sensor_msgs::LaserScan> laser_notifier_;
   ros::Publisher scan_pub_;
   ros::Publisher enemy_position_pub_;
   
 
   LaserScanToPointCloud(ros::NodeHandle n) : 
     n_(n),
     laser_sub_(n_, "scan", 10),
     
     //laser_notifier_(laser_sub_,listener_, "base_link", 10)
     laser_notifier_(laser_sub_,listener_, "base_link", 10)
   {
     laser_notifier_.registerCallback(boost::bind(&LaserScanToPointCloud::scanCallback, this, _1));
     laser_notifier_.setTolerance(ros::Duration(0.1));
     scan_pub_ = n_.advertise<sensor_msgs::PointCloud>("/my_cloud",1);
     enemy_position_pub_ = n.advertise<geometry_msgs::PoseStamped>("/enemy_laser",1);
   }

   void scanCallback (const sensor_msgs::LaserScan::ConstPtr& scan_in)
   {
     ros::Rate loop_rate(10);
     sensor_msgs::PointCloud cloud;
     geometry_msgs::PoseStamped enemy_position;
     try
     {
         //projector_.transformLaserScanToPointCloud("base_link",*scan_in, cloud,listener_);
	  projector_.transformLaserScanToPointCloud("map",*scan_in, cloud,listener_);
    }
     catch (tf::TransformException& e)
      {
        std::cout << e.what();
          return;
     }
      for (unsigned int i = 0; i < cloud.points.size(); ++i) {
      ///////////ROS_INFO("size:%d",cloud.points.size());
     double px = cloud.points[i].x, py = cloud.points[i].y, pz = cloud.points[i].z;
     //int x=0,y=0;
//      if (px>0.5&&px<7.6&&py>0.5&&py<4.6){
//       if(px>1.5&&px<1.75&&py>0&&py<1){  //B3
// 	 continue;
//       }
//       if(px>1.5&&px<2.3&&py>2.425&&py<2.675){   //B2
// 	 continue;
//       }
//       if(px>0&&px<1&&py>3.85&&py<4.1){    //B1
// 	 continue;
//       }
//       if(px>3.6&&px<4.6&&py>1&&py<1.25){    //B6
// 	 continue;
//       }
//       if(px>3.825&&px<4.275&&py>2.2&&py<2.65){     //B5
// 	 continue;
//       }
//       if(px>3.6&&px<4.6&&py>3.85&&py<4.1){      //B4
// 	 continue;
//       }
//       if(px>6.35&&px<6.6&&py>4.1&&py<5.1){       //B7
// 	 continue;
//       }
//       if(px>5.8&&px<6.6&&py>2.425&&py<2.675){       //B8
// 	 continue;
//       }
//       if(px>7.1&&px<8.1&&py>1&&py<1.25){       //B9
// 	 continue;
//       }
//       
      /////////zww
//            if (px>0.5&&px<7.6&&py>0.5&&py<4.6){
//       if(px>0&&px<1.4&&py>3.5&&py<4.45){  //B3
// 	 continue;
//       }
//       if(px>1.2&&px<2.7&&py>1.9&&py<3.1){   //B2
// 	 continue;
//       }
//       if(px>1.16&&px<2.16&&py>0&&py<1.33){    //B1
// 	 continue;
//       }
//       if(px>3.2&&px<5.0&&py>0.7&&py<1.6){    //B6
// 	 continue;
//       }
//       if(px>3.2&&px<5.0&&py>3.45&&py<4.45){     //B5
// 	 continue;
//       }
//       if(px>3.6&&px<4.6&&py>1.9&&py<3.1){      //B4
// 	 continue;
//       }
//       if(px>6.8&&px<8.1&&py>0.7&&py<1.6){       //B7
// 	 continue;
//       }
//       if(px>5.5&&px<7.0&&py>1.9&&py<3.1){       //B8
// 	 continue;
//       }
//       if(px>6.&&px<8.1&&py>3.75&&py<5.1){       //B9
// 	 continue;
//       }
      /////
            /////////8.4
           if (px>0.5&&px<7.4&&py>0.5&&py<4.5){
      if(px>0&&px<1.5&&py>3.3&&py<4.4){  //B1
	 continue;
      }
      if(px>1.1&&px<2.7&&py>2.1&&py<3.0){   //B2
	 continue;
      }
      if(px>1.1&&px<2.1&&py>0&&py<1.4){    //B3
	 continue;
      }
      if(px>3.2&&px<5.0&&py>0.6&&py<1.7){    //B6
	 continue;
      }
      if(px>3.2&&px<5.0&&py>3.3&&py<4.4){     //B4
	 continue;
      }
      if(px>5.3&&px<6.8&&py>1.8&&py<2.9){      //B5
	 continue;
      }
      if(px>6.6&&px<7.4&&py>0.6&&py<1.7){       //B7
	 continue;
      }
      if(px>6.0&&px<6.7&&py>3.5&&py<4.5){       //B8
	 continue;
      }
      if(px>3.5&&px<4.6&&py>2.0&&py<3.0){       //B9
	 continue;
      }
       if(px>0.4&&px<0.7&&py>0.4&&py<2.4)   //1
      {
	px=0.7;
	py=2.6;
      }
      else if(px>0.4&&px<0.7&&py>2.4&&py<3.6)
      {
	px=1.0;
	py=3.4;
      }
      else if(px>0.4&&px<0.7&&py>4.2&&py<4.6)
      {
	px=1.0;
	py=4.3;
      }
      else if(px>0.7&&px<2.5&&py>1.3&&py<2.1)  //4
      {
	px=3.0;
	py=2.1;
      }
      else if(px>0.7&&px<2.5&&py>2.9&&py<3.8)  //5
      {
	px=3.0;
	py=3.2;
      }
      else if(px>0.7&&px<2.5&&py>3.8&&py<4.5)  //6
      {
	px=3.0;
	py=4.0;
      }
      else if(px>2.1&&px<3.3&&py>0.5&&py<1.3)  //7
      {
	px=3.0;
	py=1.5;
      }
       else if(px>3.3&&px<4.0&&py>0.5&&py<0.8)  //7--
      {
	px=3.0;
	py=0.8;
      }
      
        else if(px>2.5&&px<3.3&&py>1.3&&py<2.1)  //8
      {
	px=3.0;
	py=1.5;
      }
        else if(px>2.5&&px<3.3&&py>2.1&&py<2.9)  //9
      {
	px=3.0;
	py=2.5;
      }
        else if(px>2.5&&px<3.5&&py>2.9&&py<3.8)  //10
      {
	px=3.0;
	py=3.0;
      }
      else if(px>2.5&&px<3.2&&py>3.8&&py<4.5)  //11
      {
	px=3.0;
	py=3.8;
      }
      else if(px>3.5&&px<4.0&&py>4.3&&py<4.5)  //11--
      {
	px=3.0;
	py=3.8;
      }
      else if(px>3.6&&px<4.6&&py>1.5&&py<2.4)  //12
      {
	px=4.0;
	py=1.6;
      }
      else if(px>3.6&&px<4.6&&py>2.4&&py<3.4)  //13
      {
	px=4.5;
	py=1.2;
      }
      else if(px>4.0&&px<4.5&&py>0.5&&py<0.7)  //14-
      {
	px=5.0;
	py=0.8;
      }
      else if(px>4.8&&px<5.5&&py>0.4&&py<1.3)  //14
      {
	px=5.2;
	py=1.5;
      }
      else if(px>4.8&&px<5.5&&py>1.3&&py<2.1)   //15
      {
	px=5.2;
	py=1.5;
      }
      else if(px>4.8&&px<5.5&&py>2.1&&py<2.9)    //16
      {
	px=5.0;
	py=2.5;
      }
      else if(px>4.8&&px<5.5&&py>2.9&&py<3.8)    //17
      {
	px=6.0;
	py=1.5;
      }
      else if(px>4.0&&px<4.5&&py>4.3&&py<4.6)   //18-
      {
	px=5.0;
	py=4.0;
      }
      else if(px>4.8&&px<5.5&&py>3.8&&py<4.5)  //18
      {
	px=5.0;
	py=3.5;
      }
      else if(px>5.5&&px<6.7&&py>0.4&&py<1.3)   //19
      {
	px=6.0;
	py=1.5;
      }
      else if(px>5.5&px<6.5&&py>1.3&&py<2.1)   //20
      {
	px=6.0;
	py=1.0;
      }
      else if(px>5.5&px<6.5&&py>2.9&&py<3.8)   //21
      {
	px=5.5;
	py=3.5;
      }
      else if(px>5.5&px<6.0&&py>3.8&&py<4.5)   //22
      {
	px=5.5;
	py=3.5;
      }
      else if(px>6.7&&px<7.5&&py>0.4&&py<0.8)   //23
      {
	px=6.2;
	py=0.8;
      }
      else if(px>6.5&px<7.5&&py>1.3&&py<2.1)   //24
      {
	px=6.0;
	py=1.5;
      }
      else if(px>6.7&px<7.5&&py>2.1&&py<3.5)   //25
      {
	px=7.0;
	py=2.0;
      }
      else if(px>6.8&px<7.5&&py>3.5&&py<4.5)   //26
      {
	px=7.0;
	py=3.5;
      }
      
  

    
     /*  if((px>1.5&&px<1.8&&py>1.5&&py<2.5)||(px>1.3&&px<2.3&&py>3.8&&py<4)||(px>4.6&&px<4.9&&py>4&&py<5)||
	 (px>6.5&&px<6.8&&py>2.7&&py<3.7)||(px>6.0&&px<7.0&&py>1.0&&py<1.3)||(px>3.6&&px<4.7&&py>2.4&&py<2.7)||(px>3.4&&px<3.7&&py>0&&py<1.0))
	 continue;
	 */
     //将(px,py)坐标值四舍五入后发布
    // ROS_INFO("%lf,%lf",px,py);
     //x=round(px);
     //y=round(py);
     
     //ROS_INFO("%d,%d",x,y);
     else 
     {
       px = -0.1;
       py = -0.1;
    }
     enemy_position.pose.position.x=px;
     enemy_position.pose.position.y=py;
     enemy_position.pose.orientation.x=0;
     enemy_position.pose.orientation.y=0;
     enemy_position.pose.orientation.z=0;
     enemy_position.pose.orientation.w=1;
     
     }
      }
     // Do something with cloud.
     if(enemy_position.pose.position.x!=0&&enemy_position.pose.position.y!=0){
     enemy_position_pub_.publish(enemy_position);
     loop_rate.sleep();
     }
     scan_pub_.publish(cloud);
     //
 /////////////////////////////////

//ROS_ERROR_STREAM("enemy_position.pose.position.x"<<enemy_position.pose.position.x);

/////////////////////////////////////////////////////////////////
  };   
};

int main(int argc, char** argv){
   
     ros::init(argc, argv, "my_scan_to_cloud");
     ros::NodeHandle n;
     

     LaserScanToPointCloud lstopc(n);
     
     ros::spin();
     //ros::spinOnce();
     
     return 0;
}


/*
void SignalHandler(int signal){
  if(ros::isInitialized() && ros::isStarted() && ros::ok() && !ros::isShuttingDown()){
    ros::shutdown();
  }
}

int main(int argc, char** argv) {

  signal(SIGINT, SignalHandler);
  signal(SIGTERM,SignalHandler);
  ros::init(argc, argv, "test_costmap", ros::init_options::NoSigintHandler);
  tf::TransformListener tf(ros::Duration(10));

  std::string local_map = ros::package::getPath("roborts_costmap") + \
      "/config/costmap_parameter_config_for_local_plan.prototxt";
  roborts_costmap::CostmapInterface costmap_interface("map",
                                                      tf,
                                                      local_map.c_str());

  ros::AsyncSpinner async_spinner(1);
  async_spinner.start();
  ros::waitForShutdown();
  return 0;
}
*/
