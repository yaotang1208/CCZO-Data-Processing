clear
clc

filename = 'CR3000_1min.xlsx';
Table = readtable(filename);
T1 = datetime(Table{:,1},'InputFormat','M/d/yyyy h:mm:ss a');
T = table2array(Table(:,2:end));

T(T==-9999) = NaN;

Voltage_BC = T(:,2);
Shortwave_BC_DW = T(:,4);
Shortwave_BC_UW = T(:,5);
T_CNR4 = T(:,8);
Longwave_BC_DW = T(:,10);
Longwave_BC_UW = T(:,11);
RnS_BC = T(:,12);
RnL_BC = T(:,13);
Albedo_BC = T(:,14);
Rn_BC = T(:,15);
Ta_2m_BC = T(:,16);
RH_2m_BC = T(:,17);
Ta_20cm_BC = T(:,18);
RH_20cm_BC = T(:,19);
T_SB = T(:,22);
SkinT_BC = T(:,23);
Theta_BC = T(:,24);
Ts_BC = T(:,26);
G_BC = T(:,27);


figure(1);
subplot(4,1,1);
plot(T1,Shortwave_BC_DW);
ylabel('Shortwave DW');

subplot(4,1,2);
plot(T1,Shortwave_BC_UW);
ylabel('Shortwave UW');

subplot(4,1,3);
plot(T1,Albedo_BC);
ylabel('Albedo');

subplot(4,1,4);
plot(T1,RnS_BC);
ylabel('RnS');

figure(2);
subplot(3,1,1);
plot(T1,Longwave_BC_DW);
ylabel('Longwave DW');

subplot(3,1,2);
plot(T1,Longwave_BC_UW);
ylabel('Longwave UW');

subplot(3,1,3);
plot(T1,RnL_BC);
ylabel('RnL');

figure(3);
subplot(3,1,1);
plot(T1,RnS_BC);
ylabel('RnS');

subplot(3,1,2);
plot(T1,RnL_BC);
ylabel('RnL');

subplot(3,1,3);
plot(T1,Rn_BC);
ylabel('Rn');

figure(4);
subplot(4,1,1);
plot(T1,T_CNR4,T1,Ta_2m_BC,T1,Ta_20cm_BC,T1,T_SB,T1,SkinT_BC,T1,Ts_BC);
legend('CNR4','2m','20cm','T_SB','SkinT','Tsoil');
ylabel('T(C)');

subplot(4,1,2);
plot(T1,RH_2m_BC,T1,RH_20cm_BC);
legend('2m','20cm');
ylabel('RH');

subplot(4,1,3);
plot(T1,Theta_BC);
ylabel('Theta');
subplot(4,1,4);
plot(T1,G_BC);
ylabel('G');

figure(5);
plot(T1,Voltage_BC);
ylabel('Voltage');
