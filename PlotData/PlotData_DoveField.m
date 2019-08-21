clear
clc

filename = 'DoveField.xlsx';
Table = readtable(filename);
T1 = datetime(Table{:,1},'InputFormat','M/d/yyyy h:mm:ss a');
T = table2array(Table(:,2:end));

Ts_2cm_CL = T(:,2);
Ts_30cm_CL = T(:,3);
Ts_50cm_CL = T(:,4);
Ts_1m_CL = T(:,5);
Ts_2m_CL = T(:,6);
Ts_7m_CL = T(:,7);
Theta_2cm_CL =  T(:,8);
Theta_30cm_CL =  T(:,9);
Theta_130cm_CL =  T(:,10);
Theta_2m_CL =  T(:,11);

figure(1);
subplot(2,1,1);
plot(T1,Ts_2cm_CL,T1,Ts_30cm_CL,T1...
    ,Ts_50cm_CL,T1,Ts_1m_CL,T1,Ts_2m_CL...
    ,T1,Ts_7m_CL,'-b','LineWidth',1);
legend('0cm','30cm','50cm','100cm','200cm','700cm');
ylabel('Ts (Crop) (DegreeC)');

subplot(2,1,2);
plot(T1,Theta_2cm_CL,T1,Theta_30cm_CL,...
    T1,Theta_130cm_CL,T1,Theta_2m_CL,'LineWidth',2);
legend('0cm','30cm','130cm','200cm');
ylabel('\Theta (Crop) (Volumatric Water Content)');




