[T,Y]=vEuler(0,5,[0.5,5],0.2);
plot (T,Y(:,1),'-*');
hold on
[T,Y]=vImpEuler(0,5,[0.5;5],0.2);
plot (T,Y(:,1),'--');
[T,Y]=vRK4(0,5,[0.5,5],0.2);
plot (T,Y(:,1));
legend ('Explicit Euler','Implicit Euler','RK4');
xlabel('t');
ylabel('y');
title('plot of y_1(t) with step size 0.2 in all three methods');
figure(2)
[T,Y]=vEuler(0,5,[0.5,5],0.2);
plot (T,Y(:,2),'-*');
hold on
[T,Y]=vImpEuler(0,5,[0.5;5],0.2);
plot (T,Y(:,2),'--');
[T,Y]=vRK4(0,5,[0.5,5],0.2);
plot (T,Y(:,2));
legend ('Explicit Euler','Implicit Euler','RK4');
xlabel('t');
ylabel('y');
title('plot of y_2(t) with step size 0.2 in all three methods');