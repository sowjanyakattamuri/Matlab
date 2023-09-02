function [rx,ry] = newton(x0,itmax,tol)
% You need to enter your equation in the last part of 
% this code. That is, for f(x)=0, you need to enter
% your function f  and its derivative fprime(x) 
% As an example, this code solves the equation exp(-x)-x=0 by Newton's method.
% To solve your own equation, you can delete those lines (Line 54 and 56) and enter your own equations and it's first derivative.
% You don't need to change anything else in the code. 
% After typing your equation and the derivative, this code should be called in MATLAB as newton(..., ..., ...) where the three arguments refer to 
% the initial guess value, maximum iterations, and tolerance value respectively. 
%
%Initialize variables
% 
x=zeros(itmax+1,1);r=zeros(itmax+1,1);
x(1,1)=x0; r(1,1)=f(x0);
fprintf('\n');
%
%Set up the iterative scheme
%
for k=1:itmax
    x(k+1,1)=x(k,1)-f(x(k,1))/fprime(x(k,1));
    r(k+1,1)=f(x(k+1,1));
    if abs(r(k+1,1))<=tol
        disp(['Method has converged after ',num2str(k),' iterations.'])
        break
    end
end
if abs(r(k+1,1))>tol
    disp(['Method has NOT converged after ',num2str(k),' iterations.'])
end
%
%Some print statements
%
fprintf('\n');
disp(' iter  value of x         value of f(x)')
for i=1:k+1
    fprintf('%4.0f',i-1)
    fprintf('%19.14f',x(i,1))
    fprintf('%19.14f',r(i,1))
    fprintf('\n');
end
fprintf('\n');
%
%Residual values of the function to be passed as output to the function
%
rx=zeros(k,1);ry=zeros(k,1);
for i=1:k
    rx(i,1)=abs(r(i,1));
    ry(i,1)=abs(r(i+1,1));
end
%
% Subroutines to enter your function and its derivative
%
function y=f(x)
y=(exp((31200-18.45062093*x)./(-8.31446261815324*x)))+(exp((58160-37.21049264*x)./(-8.31446261815324*x)))-1;
function yp=fprime(x)
yp=(((31200)./(8.31446261815324*x.^2))*exp((31200-18.45062093*x)./(-8.31446261815324*x)))+((((58160)./(8.31446261815324*x.^2))*exp((58160-37.21049264*x)./(-8.31446261815324*x))));