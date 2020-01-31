clear all;
clc;

trains = [
    1,1,-1,-1,1;
    1,-1,1,-1,1;
    -1,-1,1,1,1;
    1,1,1,1,1;
    ];

targets = [
    -1,-1,1;
    1,-1,1;
    1,1,-1;
    1,1,1;
    ];
w = 0;
for i = 1:4 
    temp = trains(i, [1:5]);
    w = w + temp' * targets(i, [1:3]);
end

x = [1,1,-1,-1,1];
temp = x * w;
temp = (temp > 0) - (temp <= 0)
