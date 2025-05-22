
% Parâmetros do sistema (exemplo)
K = 2;   % Coeficiente do termo Ks na FT de malha fechada
a = 5;   % Coeficiente do termo s no denominador
b = 4;   % Termo constante no denominador

% Exibir a fórmula do erro estacionário como texto
fprintf('Erro estacionário à rampa unitária:\n');
fprintf('     a - K\n');
fprintf('e = -------\n');
fprintf('       b\n');

% Opcional: mostrar os valores usados nos parâmetros
fprintf('\nValores utilizados:\n');
fprintf('K = %.2f\n', K);
fprintf('a = %.2f\n', a);
fprintf('b = %.2f\n', b);
