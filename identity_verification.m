clear
clc

%% variables
syms q;
syms t;
syms a0;
syms  a [1 4]
syms  u [1 4]
syms  b [1 4]
 

%% substitute a(4) by definition
a(4) = a(2) - b(3) + 1/(t+1)*(a0 - a(2)) - u(4);

%% LHS
LHS = t*(t+1)/2 * ((b(2) + u(2))^2 + (b(2) - b(1))^2) + t * (b(2) + u(2))*(a(2) - a0);
LHS = LHS - (t+1)*(t+2)/2 * ((b(4) + u(4))^2 + (b(4) - b(3))^2) - (t+1) * (b(4) + u(4))*(a(4) - a0);
LHS = LHS - t*(t+1) * (b(4)- b(2))*(a(4) - a(2));
LHS = LHS - t*(t+1)/4/q * (q*(a(4) - a(3))^2 - (b(4) - b(3))^2);
LHS = LHS - t*(t+1) * u(4) * (a(4) - a(2));
LHS = LHS - t*(t+1)/2 * u(2) * (a(2) - a(3));
LHS = LHS - t*(t+1)/2 * u(2) * (a(2) - a(4));
LHS = LHS - t*(t+1)/2 * (a(2) - b(1)+ 1/(t+1)*(a0 - a(2)) - a(3))*(a(3) - a(4));
 
%% RHS
RHS = t*(t+1)/2*((a(3)-a(4))/2 + b(1) - b(2))^2;
RHS = RHS + t*(t+1)/2*((a(3)+a(4))/2 -a(2) + b(2) + u(2)-1/(t+1)*(a0 - a(2)))^2;
RHS = RHS + ((1-4*q)*t - 4*q)/(4*q)*(t+1) * (b(3) - b(4))^2;
RHS = RHS + (t+1)*(b(3) - b(4))*(b(4) + u(4));

%% identity
display(simplify(LHS-RHS))