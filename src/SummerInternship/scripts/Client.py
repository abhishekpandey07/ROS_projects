#!/usr/bin/env python
from __future__ import print_function
import rospy
import json
from SummerInternship.srv import *
from std_msgs.msg import String
import random



def findForce(params):
    rospy.wait_for_service('calculate_force')
    try:
        
        findForce = rospy.ServiceProxy('calculate_force', Simulate)
        response = findForce(params)
        return response.force
    
    except rospy.ServiceException, e:
        rospy.loginfo("Service call failed: {}".format(e))

        
def client():
    # initilazing a ros node called SummerInternshipClient
    rospy.init_node('SummerInternshipClient', anonymous=True)

    # Creating a publisher to publish on topic '/sim_observation'
    pub = rospy.Publisher('/sim_observation', String, queue_size=5)

    # message skeletal for publishing
    message_skeleton = "t={} Simulated({},{}) = {}" 

    rate = rospy.Rate(0.2) # 0.2hz or once in 5 seconds

    # Parameters will be rounded to two decimal places.
    params = {'mass':0.0,'acceleration':0.0}

    count = 0
    while not rospy.is_shutdown() and count < 5:

        # populating parameters
        params['mass'] = round(random.uniform(0.0,100.0),2)
        params['acceleration'] = round(random.uniform(0.0,100.0),2)
        
        # Creating JSON param message
        service_arg = json.dumps(params)
        rospy.loginfo('Request JSON_param : {}'.format(service_arg))

        # Calculating Force using service function findForce
        force = findForce(service_arg)

        # formatting the skeletal
        message = message_skeleton.format(rospy.Time.now().to_sec(),\
                                            params['mass'],\
                                            params['acceleration'],force)        
        # publishing the formatted message
        pub.publish(message)
        rospy.loginfo('publishing : '+message)

        
        count += 1
        rate.sleep()
        
    rospy.loginfo('Exiting.')

if __name__ == '__main__':
    try:
        client()
    except rospy.ROSInterruptException:
        pass
