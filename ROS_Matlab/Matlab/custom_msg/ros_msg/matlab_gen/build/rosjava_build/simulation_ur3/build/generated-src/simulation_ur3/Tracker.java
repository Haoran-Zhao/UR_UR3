package simulation_ur3;

public interface Tracker extends org.ros.internal.message.Message {
  static final java.lang.String _TYPE = "simulation_ur3/Tracker";
  static final java.lang.String _DEFINITION = "# message type to describe the input of keyboard\n# to be published as a topic\n\nfloat64 up  # move up z+\nfloat64 down  # move down z-\nfloat64 left  # move left y+\nfloat64 right  # move down y-\nfloat64 forward  # move forward x+\nfloat64 backward  # move backward x-\n\nbool init_joint #initialize joint\nbool init_position #initialize position\n";
  static final boolean _IS_SERVICE = false;
  static final boolean _IS_ACTION = false;
  double getUp();
  void setUp(double value);
  double getDown();
  void setDown(double value);
  double getLeft();
  void setLeft(double value);
  double getRight();
  void setRight(double value);
  double getForward();
  void setForward(double value);
  double getBackward();
  void setBackward(double value);
  boolean getInitJoint();
  void setInitJoint(boolean value);
  boolean getInitPosition();
  void setInitPosition(boolean value);
}
