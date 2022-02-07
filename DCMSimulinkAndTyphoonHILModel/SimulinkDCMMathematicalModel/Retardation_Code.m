clear all; 
clc;
Parameter_DCM_Modified;

fprintf('Simulation for State-1 is running, please wait\n');
%sim('Retardation_of_SepExcMot_Model_Modified.slx')
sim('T3.slx')
t=Ia1(1:end,1);
Ia=Ia1(1:end,2);
If=If1(1:end,2);
Omega_r=Omega_r1(1:end,2);

figure(1);
subplot(3,1,1);plot(t,Ia);
grid on;
ylabel('Armature Current (A)');xlabel('Time (s)');
title('Armature Current ');
subplot(3,1,2);plot(t,If);
grid on;
ylabel('Field Current (A)');xlabel('Time (s)');
title(' Field Current ');
subplot(3,1,3);plot(t,Omega_r);
grid on;
ylabel('Motor speed (rpm)');xlabel('Time (s)');
title('Motor speed');




Parameter_DCM_Modified1;
fprintf('Simulation for State-2 is running, please wait\n');
%sim('Retardation_of_SepExcMot_Model_Modified.slx')
sim('T3.slx')
t_new=Ia1(1:end,1);
Ia_new=Ia1(1:end,2);
If_new=If1(1:end,2);
Omega_r_new=Omega_r1(1:end,2);
figure(2);
subplot(3,1,1);plot(t_new,Ia_new);
grid on;
ylabel('Armature Current (A)');xlabel('Time (s)');
title('Armature Current ');
subplot(3,1,2);plot(t_new,If_new);
grid on;
ylabel('Field Current (A)');xlabel('Time (s)');
title(' Field Current ');
subplot(3,1,3);plot(t_new,Omega_r_new);
grid on;
ylabel('Motor speed (rpm)');xlabel('Time (s)');
title('Motor speed');