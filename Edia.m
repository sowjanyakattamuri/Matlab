%Eutectic Phase digarm
 r1=[1328:23.5:1563];
 t3=(exp((58160-37.21049264*r1)./(-8.31446261815324*r1)));
 r2=[1328:36.3:1691];
 t4=(exp((31200-18.45062093*r2)./(-8.31446261815324*r2)));
 f=1-t4;
  plot(t3,r1);
hold on
 plot(f,r2);
yline(1328);
ylim([100,1800]);
xlabel('Mole Fraction of MgF_2');
ylabel('Temperature (Kelvin)');
title('CaF_2,MgF_2 Phase Diagram');
text(0,500,'\leftarrowCaF_2');
text(0.85,500,'MgF_2\rightarrow');
str='Liquid';
text(0.5,1500,str);
str1='CaF_2+Liquid';
text(0.09,1400,str1)
str2='MgF_2+Liquid';
text(0.70,1400,str2);
str3='CaF_2+MgF_2';
text(0.41,900,str3);
