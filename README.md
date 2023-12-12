# Signal_Sages

![Logo](nd_circuit_logo.png)

Final Project for CSE 30342 Digital Integrated Circuits

Lydia Csaszar, Dan Schrage, Phyona Schrader, and Kate Mealey

Prof. Matthew Morrison

Notre Dame

### Project: Traffic Light Controller
#### About
This project is based on the examples in section **2.4.5** of Digital Electronics 3: Finite-state Machines, and the FSM state machine example from Chapter 5 Section 5 of Figure 5.5 of The Zen of Exotic Computing [2][1]. There are two modules to the design: the controller and the counter. The counter has the inputs of EN =1, clk, clr (clear) with the outputs of rco<sub>L</sub> (long count), rco<sub>s</sub> (short count). The counter-output values are fed into S and L controller inputs, respectively. Then, the controller has the remaining R, C, and clk inputs, with IC, NR, NG, NY, ER, EG, and EY outputs. The outputs of the N value represent the state of the traffic light facing north-south streets, while the output of the values starting with E represents the state of the traffic light facing east and west. By default, the North/South street is green, while the East/West street is red. Changes in state color are determined by the value of C "detecting" a car present on the East-West street(s).


![image](https://github.com/lcsaszar01/Signal_Sages/assets/78165687/59580a2d-fd60-4695-9f06-5a8f22887549) [2]


|References|
|------------------------|
|[1] Kogge, P. M. (2022). The Zen of Exotic Computing. United States: Society for Industrial and Applied Mathematics.|
|[2] Ndjountche, T. (2016). Digital Electronics 3: Finite-state Machines. United Kingdom: Wiley.|
