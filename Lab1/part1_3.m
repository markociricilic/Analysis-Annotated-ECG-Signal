[bass, Fs] = audioread('bass.wav');
guitar = audioread('guitar.wav');
drums = audioread('drums.wav');

duration = 5;
b = bass(1:Fs*duration);
g = guitar(1:Fs*duration);
d = drums(1:Fs*duration);

sound(b, Fs);
sound(g, Fs);
sound(d, Fs);

t = 0:1:220499;

for X = 1:220499
    g(X) = g(X)*(X/Fs);
end

comp = b + g + d;

plot(t,comp);
axis([0 48/48000 -1 1])

% disp(length(guitar)); used for part 1.3a