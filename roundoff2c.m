%% question 2.c
x=(0:0.01:pi);
fy= sqrt((cos(x)+1)./2);
q=sqrt((-1.38*10.^-3*x.^6+0.041*x.^4-0.5*x.^2+2)./2);
plot(x,fy,':bo','MarkerSize',0.1);
hold on
plot(x,abs(q),'--m*','MarkerSize',0.2);
legend('fy','q');
xlabel('pi');
ylabel('function');
text(2.0944,0.4967,'curves deviating')
%%therefore x≥2pi/3, formula leads large round of errors
% The formula rearranged,Matlab verification for (x=)or p=2.1256
p=2.1256;
sqrt((cos(p)+1)./2);
%ans =  0.4864
abs(cos(p/2))
%ans =  0.4864