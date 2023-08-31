
%% Question2.b

% f(x)=f(a)+(x−a)/1!f^1(a)+(x−a)^2/2!f^2(a)+…+(x−a)^n/n!f^n(a)+....
% where 𝑓(𝑘)(𝑎) is the 𝑘th derivative, evaluated at 𝑥 = 𝑎. 
% if |𝑥 − 𝑎| < 1,then only a small number of series terms would sufficent
% to give very accurate approximation for 𝑓(𝑥) 
%Elemntry Functions such as cos(x), sin(x) is calculated using polynomial
%approxmation
x=(0:0.01:pi);
fx=(cos(x).^2-sin(x).^2);
z=(-0.08*x.^6+0.999*x.^4-2*x.^2+1);
plot(x,fx,':go','MarkerSize',0.1)
hold on
plot(x,z,'--b*','MarkerSize',0.2);
legend('fx','z');
xlabel('pi');
ylabel('function');
text(0.7854,0.1276,'both curves deviating');
%% therefore x≥pi/4, formula leads large round of errors
% The formula rearranged,Matlab verification for k =1.5785
k=1.5785;
cos(k).^2-sin(k).^2;
%ans =  -0.9999
cos(2*k)
%ans = -0.9999

