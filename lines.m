clear all
close all


ti=20
k=ti*0.3375
Gp=tf([16 20],[1 7 12.75 6.75])
Kp=tf([k*ti k],[ti 0])

S=1/(1+Gp*Kp)


bodemag(S,{0.1,1e4});




axis([0.1 1000 -20 10])
title('Bode Diagram')
xlabel('Frequency (rad/s)')
ylabel('Magnitude (dB)')
grid on


%%% (b) (c) Erreur de position nulle eterreur de vitesse égale à 1 %%%
line([0.1 10],[-20 20]);
line([0.1 1],[-1.878 -1.878]); 
line([1 1],[-1.878 20]);
line([0.1 1000],[3 3]);
