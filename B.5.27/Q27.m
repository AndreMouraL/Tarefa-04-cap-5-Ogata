
% Passo 1: Definir valores constantes
B = 1; % Valor de B (constante)
K = 1; % Valor arbitrário de K (ponto de referência)

% Passo 2: Calcular o erro estacionário simbolicamente (usando texto)
E_s_str = 'B/K';

% Passo 3: Mostrar apenas a expressão final
disp(['E_s = ', E_s_str]);

% --- Plotar gráfico de E_s = B / K ---
K_vals = linspace(0.1, 10, 100);   % Evitar K=0 para não dividir por zero
E_vals = B ./ K_vals;

% Plot
figure;
plot(K_vals, E_vals, 'b-', 'LineWidth', 2);
hold on;
plot(K, B/K, 'ro', 'MarkerSize', 8, 'DisplayName', 'Ponto atual');
grid on;
xlabel('K');
ylabel('Erro estacionário E_s');
title('Erro estacionário E_s = B / K');
legend('E_s = B/K', 'Ponto atual', 'Location', 'northeast');
