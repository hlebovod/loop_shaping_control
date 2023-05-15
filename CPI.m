clc
clear all
close all

ti=4
k=ti*0.3375
Gp=tf([16 20],[1 7 12.75 6.75])
Kp=tf([k*ti k],[ti 0])
S=1/(1+Gp*Kp)

BO=series(Kp,Gp) % boucle ouverte
T=feedback(BO,[1],-1) % boucle ferm?e / fonction de co-sensibilit?
L0=tf([0 1], [0.0016 1.0016 1 0])
Kloop=L0/Gp
BI=feedback(L0,[1],-1) % boucle ideale
nyquist(L0)

%  figure;
%  nyquist(BO)
% 
% figure;
% nichols(BO)
% 
% figure;
% bodemag(S,{0.1,1e4});
% 
% figure;
% bode(T);
% 
% 
% hold on
% 
% % (b) (c) Erreur de position nulle eterreur de vitesse égale à 1
% line([0.1 10],[-20 20]);
% 
% % (d) Bande passante -> convergence en moins de 3 sec
% line([0.1 1],[-10 -10]); 
% line([1 1],[-10 20]);
% 
% % Coef amortissement > 0.7 -> ||S||infini <= 3dB pas d'oscillation
% line([0.1 10000],[3 3]); 
% 
% % % (f) rejet de bruit à 100Hz
% % line([5 10000],[-3 -3]);
% % line([5 5],[-3 -100]);

hold off



