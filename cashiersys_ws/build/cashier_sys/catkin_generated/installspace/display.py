import rospy
from cashier_sys.msg import bill

def callback(data):
    inv=rospy.get_param('/inventory')
    inc=rospy.get_param('/income')
    rospy.loginfo(data)
    rospy.loginfo("Inventory: %d",inv)
    rospy.loginfo("Income: %d",inc)
    
def display():
    rospy.init_node('display', anonymous=True)  
    rospy.Subscriber("billing", bill, callback)

    rospy.spin()

if __name__ == '__main__':
    display()