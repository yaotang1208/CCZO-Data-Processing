clear
clc

filename = 'CR5000_1min.xlsx';
Table = readtable(filename);
T1 = datetime(Table{:,1},'InputFormat','M/d/yyyy h:mm:ss a');
T = table2array(Table(:,2:end));

T(T==-9999) = NaN;

Voltage = T(:,2);
Shortwave_AC_DW = T(:,4);
Shortwave_AC_UW = T(:,5);
Longwave_AC_DW = T(:,10);
Longwave_AC_UW = T(:,11);
T_CNR4 = T(:,8);

RnS_AC = T(:,12);
RnL_AC = T(:,13);
Albedo_AC = T(:,14);
Rn_AC = T(:,15);
Ta_9m = T(:,16);
RH_9m = T(:,17);
T_SB = T(:,20);
SkinT_AC = T(:,21);
Theta_AC = T(:,22);

figure(1);
subplot(4,1,1);
plot(T1,Shortwave_AC_DW);
ylabel('Shortwave DW');

subplot(4,1,2);
plot(T1,Shortwave_AC_UW);
ylabel('Shortwave UW');

subplot(4,1,3);
plot(T1,Albedo_AC);
ylabel('Albedo');

subplot(4,1,4);
plot(T1,RnS_AC);
ylabel('RnS');

figure(2);
subplot(3,1,1);
plot(T1,Longwave_AC_DW);
ylabel('Longwave DW');

subplot(3,1,2);
plot(T1,Longwave_AC_UW);
ylabel('Longwave UW');

subplot(3,1,3);
plot(T1,RnL_AC);
ylabel('RnL');

figure(3);
subplot(3,1,1);
plot(T1,RnS_AC);
ylabel('RnS');

subplot(3,1,2);
plot(T1,RnL_AC);
ylabel('RnL');

subplot(3,1,3);
plot(T1,Rn_AC);
ylabel('Rn');

figure(4);
subplot(3,1,1);
plot(T1,T_CNR4,T1,Ta_9m,T1,T_SB,T1,SkinT_AC);
legend('CNR4','CS215','T_SB','SkinT');
ylabel('T(C)');

subplot(3,1,2);
plot(T1,RH_9m);
ylabel('RH');

subplot(3,1,3);
plot(T1,Theta_AC);
ylabel('Theta');

figure(5);
plot(T1,Voltage);
ylabel('Voltage');