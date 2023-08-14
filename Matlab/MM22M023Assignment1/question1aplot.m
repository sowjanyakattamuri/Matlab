% Plot1 (Question1.a)
% The range of k is 0 to 5,
% Given values are substitutded to simplyfy the equation 
k=(0:0.5:5);
% s is simplfied with substitusion of A is 0,M is 0.05,Pe is 10, 
s1=(0.7*k.^4)./(-6*k.^2-2.4);
% At A is 0.5,M is 0.05,Pe is 10
s2=(0.7*k.^4-13.2*k.^2)./(141.6-6*k.^2);
% A is 1,M is 0.05,Pe is 10,
s3=(0.7*k.^4-26.4*k.^2)./(-6*k.^2+285.6);
plot(s1,k,'--ro','LineWidth',0.25,'MarkerSize',5);
hold on
plot(s2,k,'-.b^','LineWidth',0.15,'MarkerSize',8);
plot(s3,k,':gs','LineWidth',0.15,'MarkerSize',9);
legend('A=0','A=0.5','A=1');
%labels
xlabel('s');
ylabel('k');
title('s vs k');
grid on;
%polt2(Question1.b)
figure(2)
k=(0:0.5:5);
%s1 at A is 0.5,M is 0, Pe is 10 
s1=(k.^4+12*k.^2)./(-24);
%s2 at A is 0.5,M is 1, Pe is 10 
s2=(1.3*k.^4-2.4*k.^2)./(-k.^2+96);
%s3 at A is 0.5,M is 5, Pe is 10 
s3=(10.6*k.^4+105.6*k.^2)./(-6*k.^2-96);
%s4 at A is 0.5,M is 10, Pe is 10
s4=(20.6*k.^4+225.6*k.^2)./(-6*k.^2-336);
plot(s1,k,'--yo','LineWidth',0.25,'MarkerSize',3);
hold on
plot(s2,k,'-.m^','LineWidth',0.75,'MarkerSize',2);
plot(s3,k,':bs','LineWidth',0.95,'MarkerSize',1.5);
plot(s4,k,'-rhexagram','LineWidth',0.15,'MarkerSize',4);
legend('M=0','M=1','M=5','M=10');
xlabel('s');
ylabel('k');
title('s vs k');
grid on;
