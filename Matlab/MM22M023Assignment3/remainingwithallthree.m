[T,Y]=vEuler(0,5,[0.5,5],0.6);
plot(T,Y);
xlabel('t')
ylabel('y')
title('y_1,y_2 plots with step size-0.6 by using Explicit Euler');
legend('y_1','y_2');
figure(2);
[T,Y]=vEuler(0,5,[0.5,5],1.08);
plot(T,Y,'.-');
xlabel('t')
ylabel('y')
title('y_1,y_2 plots with step size-1.08 by using Explicit Euler');
legend('y_1','y_2');
figure(3);
[T,Y]=vImpEuler(0,5,[0.5;5],0.6);
    plot(T,Y,'-*')
xlabel('t')
ylabel('y')
title('y_1,y_2 plots with step size-0.6 by using Implicit Euler');
legend('y_1','y_2');
figure(4);
[T,Y]=vImpEuler(0,5,[0.5;5],1.08);
plot(T,Y,':gs')
xlabel('t')
ylabel('y')
title('y_1,y_2 plots with step size-1.08 by using Implicit Euler');
legend('y_1','y_2');
figure(5);
[T,Y]=vRK4(0,5,[0.5,5],0.6);
plot(T,Y,'--');
xlabel('t')
ylabel('y')
title('y_1,y_2 plots with step size-0.6 by using RK4');
legend('y_1','y_2');
figure(6);
[T,Y]=vRK4(0,5,[0.5,5],1.08);
plot(T,Y,'--');
xlabel('t')
ylabel('y')
title('y_1,y_2 plots with step size-1.8 by using RK4');
legend('y_1','y_2');