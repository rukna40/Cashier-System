import rospy

from cashier_sys.msg import bill
from cashier_sys.srv import update

rospy.set_param('/inventory', 1000)
rospy.set_param('/income', 0)

def callback(data):
    quantity=data.Quantity
    total=data.Total

    rospy.wait_for_service('update_parameters')
    try:
        update_parameters = rospy.ServiceProxy('update_parameters', update)
        response = update_parameters(quantity,total)

        if response.status:
            rospy.loginfo("Parameters updated successfully.")
        else:
            rospy.loginfo("Failed to update parameters.")
        

    except rospy.ServiceException as e:
        print("Service call failed: %s"%e)

def update_params(req):

    inv=rospy.get_param('/inventory')
    inc=rospy.get_param('/income')

    rospy.set_param('/inventory', inv-req.Quantity)
    rospy.set_param('/income', inc+req.Total)

    return("Success")
    
def bill_sub():
    rospy.init_node('bill_sub', anonymous=True)
    rospy.Subscriber("billing", bill, callback)
    s = rospy.Service('update_parameters', update, update_params)   
    rospy.spin()

if __name__ == '__main__':
    bill_sub()