# Design of a Robotic Laser Surgical Tool Using MATLAB

A bone graft is a surgical procedure used to fix problems with bones or joints. 
Bone grafting, or transplanting of bone tissue, is beneficial in fixing bones that are damaged from trauma, or problem joints. 
It's also useful for growing bone around an implanted device, such as a total knee or hip replacement.

This program is designed for a robotic laser surgical tool to make a hypothetical incision cut (graft) of a specified region on 
the ilium (pelvic/hip bone) of a human as shown (rectangular region) in Figure below, so that further cuts can be made and then 
transplanted to another site for bone repair, as described below.

<img width="550" alt="iliac bone" src="https://user-images.githubusercontent.com/101536624/173762151-fed0b3e6-3bc4-4338-84a5-a5667114ee95.png">


A laser cutting surgical tool needs to be programmed to perform an incision in a human ilium (pelvic/hip bone) rectangular area of 8-mm by 16-mm.
The additional cuts within the incised rectangular piece that is removed are to have the shapes (within the rectangular region) as shown in the figure below.

<img width="550" atl="hypothetical incision" src="https://user-images.githubusercontent.com/101536624/173762419-fb049e76-060e-4a42-8def-4b7c285e03e1.jpg">

In order to produce such an incision, three separate cuts are required.

The first cut is produced during a time interval 0 ≤ t ≤ 2.36 sec with the cutting head control signals:

> x(t) = 3 + 0.375 cos(t / 0.375) and y(t) = 4 + 0.375 sin(t / 0.375)

The second cut is produced during a time interval 0 ≤ t ≤ 7.86 sec with the cutting head control signals:

> x(t) = 12 + 1.25 cos(t / 1.25) and y(t) = 4 + 1.25 sin(t / 1.25)

The third and final cut is produced during a time interval 0 ≤ t ≤ 27.65 sec with the cutting head control signals:

> x(t) = a<sub>x</sub>(t) [u(t) - u(t - t<sub>1</sub>)] + x<sub>1</sub>u(t - t<sub>1</sub>)

> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; +b<sub>x</sub>[r(t - t<sub>1</sub>) - r(t - t<sub>2</sub>)] - x<sub>2</sub>u(t - t<sub>2</sub>)
  
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; +c<sub>x</sub>(t) [u(t - t<sub>2</sub>) - u(t - t<sub>3</sub>)]
  
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -b<sub>x</sub>r(t - t<sub>3</sub>) + x<sub>2</sub>u(t - t<sub>3</sub>)


> y(t) = a<sub>y</sub>(t) [u(t) - u(t - t<sub>1</sub>)] + y<sub>1</sub>u(t - t<sub>1</sub>)

> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; +b<sub>y</sub>[r(t - t<sub>1</sub>) - r(t - t<sub>2</sub>)] - y<sub>2</sub>u(t - t<sub>2</sub>)
  
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; +c<sub>y</sub>(t) [u(t - t<sub>2</sub>) - u(t - t<sub>3</sub>)]
  
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; +b<sub>y</sub>r(t - t<sub>3</sub>) + y<sub>3</sub>u(t - t<sub>3</sub>)
  
  where:
  
> x<sub>1</sub> = 3 + 0.75cos(2/3),  &nbsp;&nbsp;&nbsp;&nbsp; x<sub>2</sub> = 12 - 2cos(0.5),

> y<sub>1</sub> = 4 - 0.75sin(2/3),  &nbsp;&nbsp;&nbsp;&nbsp; y<sub>2</sub> = 4 - 2sin(0.5),

> y<sub>3</sub> = 4 + 2sin(0.5),  &nbsp;&nbsp;&nbsp;&nbsp; A = |(x<sub>2</sub> - x<sub>1</sub>) + j(y<sub>2</sub> - y<sub>1</sub>)|,

> θ = ∠(x2 - x1) + j(y2 - y1) ,  &nbsp;&nbsp;&nbsp;&nbsp; t<sub>1</sub> = 1.5π - 1,

> t<sub>2</sub> = t1 + A,  &nbsp;&nbsp;&nbsp;&nbsp; t<sub>3</sub> = t<sub>2</sub> + 4π - 2,

> b<sub>x</sub> = cos(θ),  &nbsp;&nbsp;&nbsp;&nbsp; b<sub>y</sub> = sin(θ),

> a<sub>x</sub>(t) = 3 + 0.75cos[(4t + 2)/3],  &nbsp;&nbsp;&nbsp;&nbsp; c<sub>x</sub>(t) = 12 + 2cos[(t - t<sub>2</sub> + 2π + 1)/2],

> a<sub>y</sub>(t) = 4 + 0.75sin[(4t + 2)/3],  &nbsp;&nbsp;&nbsp;&nbsp; c<sub>y</sub>(t) = 4 + 2sin[(t - t<sub>2</sub> + 2π + 1)/2].

