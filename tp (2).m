
clear all
close all


ti=2.9630 
k=1 
Gp=tf([16 20],[1 7 12.75 6.75])
Kp=tf([k*ti k],[ti 0])
FTBO=Kp*Gp

S=feedback(Kp,Gp)


figure(1);


bodemag(S,{0.1,1e4});
hold on


%%% (b) (c) Erreur de position nulle eterreur de vitesse égale à 1 %%%
line([0.1 10],[-20 20]);

%%% (d) Bande passante -> convergence en moins de 3 sec %%%
line([0.1 1],[-10 -10]); 
line([1 1],[-10 20]);


%%% Coef amortissement > 0.7 -> ||S||infini <= 3dB pas d'oscillation%%%
line([0.1 10000],[3 3]); 

%%% (f) rejet de bruit à 100Hz  %%%
line([100 10000],[0.001 0.001]);
line([100 10000],[-0.001 -0.001]);
line([5 10000],[-3 -3]);
line([5 5],[-3 -100]);

% figure(4)
% nichols(Kp*Gp)
% 
% figure(5)
% semilogx(w,20*log10(S_p))
% hold on
% 
% line([0.1 1000],[0 0]) 
% 
% %%% Erreur de position nulle eterreur de vitesse égale à 1 %%%
% line([0.1 10],[-20 20]) 
% 
% %%% Bande passante -> convergence en moins de 3 sec %%%
% line([0.1 1],[0 0]) 
% line([1 1],[0 20])
% 
% 
% %%% Coef amortissement > 0.7 -> ||S||infini <= 3dB pas d'oscillation%%%
% line([0.1 1000],[3 3]) 










