clear all
close all



syms k ti p B bm

% Gp=tf([16 20],[1 7 12.75 6.75])
% Kp=tf([k*ti k],[ti 0])
% FTBO=Gp*Kp
% S=feedback(Gp,Kp)

Gp= ((16*p + 20)/(p^3 + 7*p^2 + 12.75*p + 6.75))
Kp= (k*(1 + ti*p)/(ti*p))

FTBO=(Gp*Kp)
S=(1/(1+FTBO))
T=(1-S)
S_=(Gp*S)
U=(1/p^2)
wu=(B/p)

Y=(S*(U-bm)-S_*wu)

E=(p*Y)
p=0
eval(E)


S=(1/(1+Gp))


% figure;
% subplot(2,2,1),bode(FTBO);
% subplot(2,2,2),nichols(FTBO);
% subplot(2,2,3),nyquist(FTBO);
% subplot(2,2,4),margin(FTBO);
% 
% figure;
% subplot(2,2,1),bode(S);
% subplot(2,2,2),nichols(S);
% subplot(2,2,3),nyquist(S);
% subplot(2,2,4),margin(S);
% 
% 
% figure;
% step(S);
