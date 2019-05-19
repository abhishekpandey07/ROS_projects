#include "ros/ros.h"
#include "std_msgs/String.h"
#include <jsoncpp/json/json.h>
#include "SummerInternship/Simulate.h"
#include <stdlib.h>

// global json reader object
Json::Reader reader;

/*

  Request object will have a field JSON_params of the form
  {
      'mass' : flaot,
      'acceleration' : float
  }

 */

bool calculateForce(SummerInternship::Simulate::Request &req,\
		    SummerInternship::Simulate::Response &res)
{
  // creating a JSON value object
  ROS_INFO("Parameters Received : %s",req.JSON_params.c_str());
  Json::Value parameters;
  reader.parse(req.JSON_params, parameters);

  // Doing math to populate the Response Object field force
  const float_t mass = (const float_t)parameters["mass"].asFloat();
  const float_t acce = (const float_t)parameters["acceleration"].asFloat();
  ROS_INFO("Parameters received : Mass : %f | acceleration : %f",mass,acce);

  // calculating Force using Newton's Second law : F = m*a
  res.force = (float_t)(mass * acce);
  ROS_INFO("Force Calculated : %f",res.force);
  
  return true;
  
}

int main(int argc, char** argv)
{
  // initialising node
  ros::init(argc, argv, "SimulateServer");

  // creating NodeHandler Object
  ros::NodeHandle n;

  // creating ServiceServer
  ros::ServiceServer service = n.advertiseService("calculate_force",calculateForce);
  ROS_INFO("Force Calculation server ready. publish to 'calculate_force'");

  ros::spin();

  return 0;  
}



