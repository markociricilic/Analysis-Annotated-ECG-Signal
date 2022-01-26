%Analysis of an Annotated ECG Signal MATLAB Code
%A typical ECG tracing is a repeating cycle of three electrical entities: a P-wave, a QRS complex and a T-wave
%A heart rate between 60 and 100 beats per minute is considered normal
%Every time a heartbeat occurs, it will go through all PQRST points - choose one
%//////////////////////////////////////////////////////////////////////////
clear 
clc 

data1 = load('ecg1.mat'); %ECG signal for patient no. 1
data2 = load('ecg2.mat'); %ECG signal for patient no. 2
data3 = load('ecg3.mat'); %ECG signal for patient no. 3
 
%Patient no. 1 defined when marker is equal to 4 (S Point)
marker1 = sum(data1.marker==4);

%Patient no. 1 total time in minutes
time1 = (data1.time(:,32838)/60);

%Heart rate = heart beat / total time
no1_avgheartrate = marker1 / time1

%//////////////////////////////////////////////////////////////////////////

%Patient no. 2 defined when marker is equal to 4 (S Point)
marker2 = sum(data2.marker==4);

%Patient no. 2 total time in minutes
time2 = (data2.time(:,65535)/60);

%Heart rate = heart beat / total time
no2_avgheartrate = marker2 / time2

%//////////////////////////////////////////////////////////////////////////

%Patient no. 3 defined when marker is equal to 4 (S Point)
marker3 = sum(data3.marker==4);

%Patient no. 3 total time in minutes
time3 = (data3.time(:,131368)/60);

%Heart rate = heart beat / total time
no3_avgheartrate = marker3 / time3

%//////////////////////////////////////////////////////////////////////////

%patientx_matrix = [datax.ecg, datax.marker, transpose(datax.time)]; Matrix for all columns as reference*

%//////////////////////////////////////////////////////////////////////////

%Patient no. 1 Average ECG Graph Plot
marker1_values = data1.marker==4; %Only use values when the marker is equal to 4
time1_values = transpose(data1.time); %Find transpose so that the dimensions of all matrices are the same

Patient1_ecgvalues = data1.ecg(marker1_values,:); %Find the corresponding ECG values for when the marker is 4
Patient1_timevalues = time1_values(marker1_values,:); %Find the corresponding time values for when the marker is 4

%Plot information (Use LaTeX font for aesthetic)
figure 
plot(Patient1_timevalues, Patient1_ecgvalues,'r','MarkerSize',10);
title('Patient No. 1 Average ECG','Interpreter','latex', 'FontSize', 14);
xlabel('Time ($sec$)','Interpreter','latex','FontSize', 12);
ylabel('ECG ($mV$)','Interpreter','latex','FontSize', 12);

%//////////////////////////////////////////////////////////////////////////

%Patient no. 2 Average ECG Graph Plot
marker2_values = data2.marker==4; %repeat
time2_values = transpose(data2.time); %repeat

Patient2_ecgvalues = data2.ecg(marker2_values,:); %repeat
Patient2_timevalues = time2_values(marker2_values,:); %repeat

%Plot information
figure 
plot(Patient2_timevalues, Patient2_ecgvalues,'b','MarkerSize',10);
title('Patient No. 2 Average ECG','Interpreter','latex', 'FontSize', 14);
xlabel('Time ($sec$)','Interpreter','latex', 'FontSize', 12);
ylabel('ECG ($mV$)','Interpreter','latex', 'FontSize', 12);

%//////////////////////////////////////////////////////////////////////////

%Patient no. 3 Average ECG Graph Plot
marker3_values = data3.marker==4; %repeat
time3_values = transpose(data3.time); %repeat

Patient3_ecgvalues = data3.ecg(marker3_values,:); %repeat
Patient3_timevalues = time3_values(marker3_values,:); %repeat

%Plot information
figure 
plot(Patient3_timevalues, Patient3_ecgvalues,'k','MarkerSize',10);
title('Patient No. 3 Average ECG','Interpreter','latex', 'FontSize', 14);
xlabel('Time ($sec$)','Interpreter','latex', 'FontSize', 12);
ylabel('ECG ($mV$)','Interpreter','latex', 'FontSize', 12);

%//////////////////////////////////////////////////////////////////////////

%Combined graph plot for the three patients
figure
title('Patient No.1 to No. 3 Average ECG','Interpreter','latex', 'FontSize', 14);
xlabel('Time ($sec$)','Interpreter','latex', 'FontSize', 12);
ylabel('ECG ($mV$)','Interpreter','latex', 'FontSize', 12);

hold on
plot(Patient1_timevalues, Patient1_ecgvalues,'r','MarkerSize',10);
plot(Patient2_timevalues, Patient2_ecgvalues,'b','MarkerSize',10);
plot(Patient3_timevalues, Patient3_ecgvalues,'k','MarkerSize',10);
legend('Red = Patient No.1','Blue = Patient No.2','Black = Patient No.3','Interpreter','latex','FontSize', 10);
hold off