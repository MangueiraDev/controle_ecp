%{
AULA PRÁTICA DE CONTROLE - dia 10-1-25 (Prof. Pedro Baptista)
%}

% Declarar a função: G(s) = 5s + 1 / 10s^2 + 3s + 5

% Método 1
num = [5 1]; % Coeficientes do polnômio de numerador
den = [10 3 5]; % Coeficientes do polnômio de denominador
g = tf (num, den)

% Método 2
s = tf ('s');
h = (5*s+1)/(10*s^2+3*s+5)