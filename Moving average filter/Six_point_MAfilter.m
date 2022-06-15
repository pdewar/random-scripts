n = 0:1:69;
input = 5*cos(((pi*n)/10)-(pi/4));
B = 1/6*ones(6,1);
output = filter(B,1,input);
subplot(2,1,1)
stem(n,input);
title('Input');
xlabel('n')
ylabel('x(n)')
subplot(2,1,2)
stem(n,output);
title('Moving Average filter output');
xlabel('n');
ylabel('y(n)');