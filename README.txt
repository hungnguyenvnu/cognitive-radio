Content
---

The src repository contains source code of mobile robot with Extended Kalman Filter 
in  VLC system. The repository includes:

 - README.text: this file.
 
 - CallParameters.m: Declare the global parameters
 
 - InputParameters.m: Set value for global parameters declared in CallParameters file
 
 - computeEstAngle.m: Compute angle when robot is under the kth LED
 
 - computeIrradianceAngle.m: Compute the distance from LED to the ith PD
 
 - computeLocation.m: Find the position of robot in the cover area of the kth LED
 
 - computeNoise.m: Noise at PD
 
 - computePowerLeft.m: Compute power when robot is on the left of LED 
 
 - computePowerRight.m: Compute power when robot is on the right of LED
 
 - computeWeight.m: Estimate angle based on method "Truncated-Weighting"
 
 - createPhotodiodeArray.m: Array of PD on robot
 
 - ExtendKalmanFilter.m: Simulation for EKF
 
 - ImplementEKF.m: Implement EKF
 
 - Start.m: To run simulation program
 
-----------------------------  
