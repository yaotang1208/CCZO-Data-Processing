clear
clc

filename = 'CR3000_30min.xlsx';
Table = readtable(filename);
T1 = datetime(Table{:,1},'InputFormat','M/d/yyyy h:mm:ss a');
T = table2array(Table(:,2:end));
T(T==-9999) = NaN;

Rain = T(:,2);


figure(1);
plot(T1,Rain);
ylabel('Rain(mm/30mins)');




