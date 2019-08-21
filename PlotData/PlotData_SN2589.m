clear
clc

filename = 'SN2589.xlsx';
Table = readtable(filename);
T1 = datetime(Table{:,1},'InputFormat','M/d/yyyy h:mm:ss a');
T = table2array(Table(:,2:end));

T(T==-9999) = NaN;

Ta_5m = T(:,2);
RH_5m = T(:,3);
Ta_3m = T(:,4);
RH_3m = T(:,5);
Ta_1m = T(:,6);
RH_1m = T(:,7);
Ta_20cm = T(:,8);
RH_20cm = T(:,9);
Theta_2cm_YP = T(:,10);
Theta_15cm_YP = T(:,11);
Theta_40cm_YP = T(:,12);
G_2cm = T(:,16);
G_15cm = T(:,17);
G_40cm = T(:,18);
Ts_2cm_YP = T(:,19);
Ts_15cm_YP = T(:,20);
Ts_40cm_YP = T(:,21);

figure(1); %Above Canopy
subplot(2,1,1);
plot(T1,Ta_20cm,T1,Ta_1m,T1,Ta_3m,T1,Ta_5m);
legend('20cm','1m','3m','5m');
ylabel('Ta (DegreeC)');
subplot(2,1,2);
plot(T1,RH_20cm,T1,RH_1m,T1,RH_3m,T1,RH_5m);
legend('20cm','1m','3m','5m');
ylabel('RH (%)');

figure(2);
subplot(3,1,1);
plot(T1,Ts_2cm_YP,T1,Ts_15cm_YP,T1,Ts_40cm_YP);
legend('2cm','15cm','40cm');
ylabel('Tsoil(C)');

subplot(3,1,2);
plot(T1,Theta_2cm_YP,T1,Theta_15cm_YP,T1,Theta_40cm_YP);
legend('2cm','15cm','40cm');
ylabel('\Theta');

subplot(3,1,3);
plot(T1,G_2cm,T1,G_15cm,T1,G_40cm);
legend('2cm','15cm','40cm');
ylabel('G (Wm^-2)');

