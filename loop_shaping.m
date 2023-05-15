clear all
close all
clf
clc

Gp=tf([16 20],[1 7 12.75 6.75])
Kp=tf([1],[10 0])
FTBO=Gp*Kp
S=feedback(Gp,Kp)

figure;
subplot(2,2,1),bode(FTBO);
subplot(2,2,2),nichols(FTBO);
subplot(2,2,3),nyquist(FTBO);
subplot(2,2,4),margin(FTBO);

figure;
subplot(2,2,1),bode(S);
subplot(2,2,2),nichols(S);
subplot(2,2,3),nyquist(S);
subplot(2,2,4),margin(S);


figure;
step(S);
