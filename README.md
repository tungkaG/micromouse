Code for Micromouse project (SS2025)

You should be able to set the PWM output (LED5) to a percentage value using UART in the following format: "<70.3>" -> sets the motor to 70.3% speed
The output of PWM is currently scaled by 0.81 since the Motors are powered using a 7.4V Battery.
The output can also be observed on LED5 (but since LED is active low -> 0% input results in a very bright LED) 

Currently, every 10ms, the current speed of MotorA in rotations/s is sent via UART
