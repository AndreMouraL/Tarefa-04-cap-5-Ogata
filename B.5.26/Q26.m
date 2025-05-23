
% Parâmetros do sistema (exemplo)
K = 2;   % Coeficiente do termo Ks na FT de malha fechada
a = 5;   % Coeficiente do termo s no denominador
b = 4;   % Termo constante no denominador

% Cálculo do erro estacionário para entrada rampa unitária
e = (a - K)/b;

% Exibir a fórmula do erro estacionário como texto
fprintf('Erro estacionário à rampa unitária:\n');
fprintf('     a - K\n');
fprintf('e = -------\n');
fprintf('       b\n');

% Mostrar valores usados
fprintf('\nValores utilizados:\n');
fprintf('K = %.2f\n', K);
fprintf('a = %.2f\n', a);
fprintf('b = %.2f\n', b);
fprintf('Erro estacionário (e) = %.2f\n', e);

% --- Plotando erro estacionário em função de K ---
K_vals = linspace(0, 2*a, 100);           % Variação de K de 0 a 2a
e_vals = (a - K_vals) ./ b;               % Erro estacionário correspondente

figure;
plot(K_vals, e_vals, 'b-', 'LineWidth', 2);
hold on;
plot(K, e, 'ro', 'MarkerSize', 8, 'DisplayName', 'Ponto atual');
grid on;
xlabel('K');
ylabel('Erro estacionário e');
title('Erro estacionário à rampa unitária em função de K');
legend('e = (a - K)/b', 'Ponto atual', 'Location', 'northeast');
