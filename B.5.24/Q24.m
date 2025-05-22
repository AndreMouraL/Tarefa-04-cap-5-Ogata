% Definir o intervalo de K
K = linspace(0.1, 20, 1000); % Evita K = 0

% Calcular Kh na curva divisória: 5KKh = K - 1 => Kh = (K - 1)/(5K)
Kh_dividing = (K - 1) ./ (5 * K);

% Plotar a curva divisória
figure;
plot(K, Kh_dividing, 'k-', 'LineWidth', 1.5);
hold on;

% Criar a região estável (acima da curva)
K_fill = [K, fliplr(K)];                % Repetir K para fechar o polígono
Kh_fill = [Kh_dividing, fliplr(zeros(size(K)))]; % Acima da curva até o fundo

% Preencher a região estável
fill(K_fill, Kh_fill, [0.8 0.8 0.8], 'EdgeColor', 'none');

% Plotar novamente a curva divisória por cima
plot(K, Kh_dividing, 'k-', 'LineWidth', 1.5);

% Configurações do gráfico
xlabel('K');
ylabel('K_h');
title('Região Estável no Plano K-K_h');
grid on;
xlim([0 20]);
ylim([0 0.2]);

% Adicionar anotação da equação
text(5, 0.1, '5KK_h = K - 1', 'HorizontalAlignment', 'center', ...
     'VerticalAlignment', 'middle', 'FontSize', 12);

% Linha tracejada vertical em K = 5
plot([5 5], [0 0.2], '--k', 'LineWidth', 1);

legend('Curva Divisória', 'Região Estável', 'Location', 'northwest');