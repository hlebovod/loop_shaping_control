clear all
close all

ti=1 
k=1
Gp=tf([16 20],[1 7 12.75 6.75])
Kp=tf([k*ti k],[ti 0])
FTBO=Kp*Gp

S=feedback(Kp,Gp)

figure;
bode(Kp)