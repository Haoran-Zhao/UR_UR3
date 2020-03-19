package simulation_ur3;

public interface PosTracker extends org.ros.internal.message.Message {
  static final java.lang.String _TYPE = "simulation_ur3/PosTracker";
  static final java.lang.String _DEFINITION = "# message type to describe the tracking information of the end effector\n# to be published as a topic\n\nfloat64 c_X  # current X\nfloat64 c_Y  # current Y\nfloat64 c_Z  # current Z\nfloat64 g_X  # goal X\nfloat64 g_Y  # goal Y\nfloat64 g_Z  # goal Z\n";
  static final boolean _IS_SERVICE = false;
  static final boolean _IS_ACTION = false;
  double getCX();
  void setCX(double value);
  double getCY();
  void setCY(double value);
  double getCZ();
  void setCZ(double value);
  double getGX();
  void setGX(double value);
  double getGY();
  void setGY(double value);
  double getGZ();
  void setGZ(double value);
}
