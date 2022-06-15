t=0:0.1:27.65; 

x1 = 3+0.75*cos(2/3);
x2 = 12-2*cos(0.5);
y1 = 4-0.75*sin(2/3);
y2 = 4-2*sin(0.5);
y3 = 4+2*sin(0.5);
A = abs((x2-x1)+(y2-y1)*sqrt(-1));
k =((x2-x1)+(y2-y1)*sqrt(-1));
theta = angle(k);
t1 = 1.5*pi-1;
t2 = t1+A;
t3 = t2+4*pi-2;
bx = cos(theta);
by = sin(theta);
ax = 3+0.75*cos((4*t+2)/3);
cx = 12+2*cos((t-t2+2*pi+1)/2);
ay = 4+0.75*sin((4*t+2)/3);
cy = 4+2*sin((t-t2+2*pi+1)/2);

x = ax.*(us(t)-us(t-t1))+x1.*us(t-t1)...
	+bx.*(ur(t-t1)-ur(t-t2))-x2.*us(t-t2)...
	+cx.*(us(t-t2)-us(t-t3))...
	-bx.*ur(t-t3)+x2.*us(t-t3);

y = ay.*(us(t)-us(t-t1))+y1*us(t-t1)...
	+by.*(ur(t-t1)-ur(t-t2))-y2.*us(t-t2)...
	+cy.*(us(t-t2)-us(t-t3))...
	+by.*ur(t-t3)+y3.*us(t-t3);

a=0:3:15; b=0:3:9; p=[0.16,0.4,0.28,0.224];
plct(x,y,a,b,p,1,2,'-',0); hold on; %Third Cut Plot

x=3+0.375*cos(t/0.375);
y=4+0.37*sin(t/0.375);
 plct(x,y,a,b,p,1,2,'-',0); hold on ;%Second Cut Plot
 
x=12+1.25*cos(t/1.25);
y=4+1.25*sin(t/1.25);
 plct(x,y,a,b,p,1,2,'-',0); hold off ;%First Cut Plot
    xlabel('x(t)'); ylabel('y(t)');
