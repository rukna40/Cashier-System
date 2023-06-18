import rospy
from cashier_sys.msg import bill

def bill_pub():
    rospy.init_node('bill_pub', anonymous=True)

    pub = rospy.Publisher('billing', bill, queue_size=10)
    
    rate = rospy.Rate(10)

    while not rospy.is_shutdown():
        bno=int(input("Enter Bill Number: "))
        rospy.loginfo("Bill %d",bno)
        quantity=int(input("Enter Quantity: "))    
        price=float(input("Enter Price: "))
        
        time=rospy.Time.now()    

        msg=bill()
        msg.BillNumber=bno
        msg.Quantity=quantity
        msg.Timestamp=time
        msg.Price=price
        msg.Total=price*quantity

        pub.publish(msg)
        rate.sleep()

if __name__ == '__main__':
    try:
        bill_pub()
    except rospy.ROSInterruptException:
        pass