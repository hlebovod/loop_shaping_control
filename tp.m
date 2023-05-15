
clear all
clc



ti=0.5
k=ti/0.3375
Gp=tf([16 20],[1 7 12.75 6.75])
Kp=tf([k*ti k],[ti 0])

figure(1)
S=feedback(Kp,Gp)
bode(S)



figure(2)
grid on
hold on



axis([0.1 1000 -30 5])

line([0.1 1000],[0 0]) 
line([0.1 10],[-20 20]) % Erreur de position nulle eterreur de vitesse égale à 1

figure(3)


semilogx(Gp)

figure(4)

S=feedback(Kp,1)
bode(S)














