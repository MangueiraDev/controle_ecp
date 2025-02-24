% Testar sinal com uma Função de transferência estável e simples
%{
G(s)=1 / sˆ2 + 5s + 6
%}
s = tf ('s');
g = (1)/(1*s^2+5*s+6)

% step (g) % plota resposta ao degrau inicial sem muita opção de ajustes customizados

t = 0:0.01:4; % definindo o tempo de 0 a 4 seg com 0.01 de amostragem

y = step(g,t); % Variável de saida da função

u = ones (401,1)


plot(t,y, 'r', 'LineWidth',2)
grid on
xlabel('Tempo(s)');
ylabel('Amplitude');
title('Resposta ao Degrau');
axis([0 3 0 1.2]);

hold on

plot(t,u,'g','LineWidth',2)

legend('Resposta', 'Referência')

% Simular Resposta a rampa

figure() %abre nova figura sem fechar a anterior

w = step(g/s,t); % Variável de saida da rampa

plot(t,w, 'b', 'LineWidth',2)
grid on
xlabel('Tempo(s)');
ylabel('Amplitude');
title('Resposta ao Rampa');
axis([0 3 0 3]);

hold on

plot(t,t)

legend('Resposta', 'Referência', 'Location', 'northwest')


% Simular Resposta ao impulso

figure() %abre nova figura sem fechar a anterior

z = impulse(g,t); % Resposta ao impulso

plot(t,z, 'b', 'LineWidth',2)
grid on
xlabel('Tempo(s)');
ylabel('Amplitude');
title('Resposta ao Impulso');

