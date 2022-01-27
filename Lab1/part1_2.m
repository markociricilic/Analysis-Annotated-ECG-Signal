T=1;
Fs = 48000;
N = T*Fs;
t = 0 : 1/Fs : 0.006;
Fn = 500;
y = 2*sin(Fn*2*pi*t);
sound(y,Fs);
plot(t,y);
axis([0 48/48000 -1 1])

%{
Code for Frequency 2000 Hz:
T=1;
Fs = 48000;
N = T*Fs;
t = 0 : 1/Fs : 0.0015;
Fn = 2000;
y = 2*sin(Fn*2*pi*t);
sound(y,Fs);
plot(t,y);
axis([0 48/48000 -1 1])

Code for Frequency 10000 Hz:
T=1;
Fs = 48000;
N = T*Fs;
t = 0 : 1/Fs : 0.0003;
Fn = 10000;
y = 2*sin(Fn*2*pi*t);
sound(y,Fs);
plot(t,y);
axis([0 48/48000 -1 1])
%}