clc; clear; close all; format long;
# dados da questão #########
f = @(x) 3*sin(2*x) - 3*x^3 + 7;
a = 1; 
b = 2; 
e = 10^-3;
############################
a_atual = a;
b_atual = b;
erro = (b_atual - a_atual)/2;
i = 0;
while erro > 10^-3
    x_barra = (a_atual+b_atual)/2;
    erro = (b_atual - a_atual)/2;
    fprintf('a = %f, x_barra = %.9f, b = %f, erro = %f\n', a_atual, x_barra, b_atual, erro);
    if f(a_atual)*f(x_barra) > 0
        a_atual = x_barra;       
    endif
    if f(b_atual)*f(x_barra) > 0 
        b_atual = x_barra;
    endif
    i = i+1;
endwhile
fprintf('\nResposta: x_barra = %.9f, i = %f\n', x_barra, i);