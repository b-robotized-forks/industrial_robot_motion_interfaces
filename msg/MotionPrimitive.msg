# Motion Primitives:
uint8 LINEAR_JOINT=10 # Often referred as PTP  (mathias31415: changed from 0 to 10 because 0 is default value)
uint8 LINEAR_CARTESIAN=50 # Often referred as LIN
uint8 CIRCULAR_CARTESIAN=51 # Often referred as CIRC
# potentially more, such as spline motion

# Helper types
uint8 STOP_MOTION=66 # (mathias31415: added to stop current motion)
uint8 RESET_STOP=67
uint8 MOTION_SEQUENCE_START=100 # (mathias31415: added to indicate, that next motion primitives should be send as a motion sequence to the robot)
uint8 MOTION_SEQUENCE_END=101   # (mathias31415: end of the motion sequence)


uint8 type # one of the above

float64 blend_radius

MotionArgument[] additional_arguments # (max) velocity, (max) acceleration, efficiency

# Targets should be either specified through joint configurations or Cartesian poses.
# Depending on the motion type and implementation, there might be multiple poses allowed.
# For example, circular motions are often specified as via and target
geometry_msgs/PoseStamped[] poses
float64[] joint_positions
