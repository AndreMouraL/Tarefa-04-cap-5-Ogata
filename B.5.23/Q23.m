%% 1. Definir parâmetros do sistema
K = 4;          % Razão K/J = 4 (dado no problema)
zeta_desejado = 0.6;  % Coeficiente de amortecimento desejado
wn = sqrt(K);    % Frequência natural (ωₙ = √(K/J) = 2 rad/s)

%% 2. Cálculo do ganho Kh
Kh = (2 * zeta_desejado * wn) / K;
disp(['Kh calculado: ', num2str(Kh)]);

%% 3. Criar a função de transferência do sistema
s = tf('s');
G = K / (s^2 + K*Kh*s + K);

%% 4. Plotar a resposta ao degrau
figure;
step(G);
grid on;
title(['Resposta ao Degrau - ζ = ', num2str(zeta_desejado), ...
       ', Kh = ', num2str(Kh)]);
xlabel('Tempo (s)');
ylabel('Amplitude');

%% 5. Análise dos polos (verificação)
polos = pole(G);
disp('Polos do sistema:');
disp(polos);

% Cálculo do ζ real a partir dos polos
zeta_real = -real(polos(1))/wn;
disp(['ζ real: ', num2str(zeta_real)]);


%% 6. Informações adicionais do sistema
disp('Informações do sistema:');
stepinfo(G)