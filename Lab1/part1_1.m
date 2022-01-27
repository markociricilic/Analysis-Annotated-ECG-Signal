T = 1;
Fs = 48000;
N = T*Fs;
t = 0 : 1/Fs : 0.003;
Fn = 1000;
y = sin(Fn*2*pi*t);
plot(t,y);
axis([0 48/48000 -1 1])
