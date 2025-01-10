% Testar sistema de priemira ordem
%{
G(s) = S + 1 / s + 2
%}

s = tf ('s');
g = (1)/(s+2)

p = pole(g) % polos da funcao
z = zero(g) % zeros da funcao


t = 0:0.01:4; % definindo o tempo de 0 a 4 seg com 0.01 de amostragem

y = step(g,t); % Variável de saida da função

plot(t,y, 'r', 'LineWidth',2)
grid on


T= 1/abs(p); % Constante de tempo

hold on

plot(t,u,'g','LineWidth',2)

legend('Resposta', 'Referência')

%{
Resultado com esses parâmetros gerou Valor final de 0,5
 Constante de tempo é o tempo para atingir 63,2% de 0,5.
 Nesse caso acontece quando a resposta ao degrau y = 0,316
%}

A = 0.632*y(end); % Calculo do Valor final