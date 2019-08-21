clear
clc

filename = 'SN2588.xlsx';
Table = readtable(filename);
T1 = datetime(Table{:,1},'InputFormat','M/d/yyyy h:mm:ss a');
T = table2array(Table(:,2:end));

T(T==-9999) = NaN;

Ts_30cm_YP = T(:,2);
Ts_60cm_YP = T(:,3);
Ts_80cm_YP = T(:,4);
Theta_30cm_YP = T(:,5);
Theta_60cm_YP = T(:,6);
Theta_80cm_YP = T(:,7);
G_80cm = T(:,11);


figure(2);
subplot(3,1,1);
plot(T1,Ts_30cm_YP,T1,Ts_60cm_YP,T1,Ts_80cm_YP);
legend('30cm','60cm','80cm');
ylabel('Tsoil(C)');

subplot(3,1,2);
plot(T1,Theta_30cm_YP,T1,Theta_60cm_YP,T1,Theta_80cm_YP);
legend('30cm','60cm','80cm');
ylabel('\Theta');

subplot(3,1,3);
plot(T1,G_80cm);
ylabel('G (Wm^-2)');

