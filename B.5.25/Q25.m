% Definir valores numéricos para b1, b2, b3 (exemplo)
b1 = 2;
b2 = 3;
b3 = 4;

% Matriz de Schwarz A
A = [0  1  0;
    -b3 0  1;
     0 -b2 -b1];

% Equação característica: |sI - A| = 0
% Coeficientes do polinômio característico: s^3 + b1*s^2 + (b2 + b3)*s + b1*b3
coeffs = [1, b1, b2 + b3, b1*b3]; % [s^3, s^2, s^1, s^0]

% Construir a tabela de Routh manualmente
a3 = coeffs(1); % = 1
a2 = coeffs(2); % = b1
a1 = coeffs(3); % = b2 + b3
a0 = coeffs(4); % = b1*b3

routh_table = [
    a3      a1      0;
    a2      a0      0;
    (a2*a1 - a3*a0)/a2  0      0;
    a0      0       0;
];

% Mostrar resultados
disp('Equação característica:');
disp(['s^3 + ', num2str(b1), '*s^2 + ', num2str(b2 + b3), '*s + ', num2str(b1*b3)]);

disp('Tabela de Routh:'); 
disp(routh_table);

disp('Primeira coluna da tabela de Routh:'); 
first_column = [a3; a2; routh_table(3,1); a0];
disp(first_column);

% Verificação
expected_column = [1; b1; b2; b1*b3];
if isequal(first_column, expected_column)
    disp('A primeira coluna é [1; b1; b2; b1*b3], conforme esperado.');
else
    disp('A primeira coluna não corresponde ao esperado.');
end

% Plotando o gráfico da primeira coluna da Tabela de Routh
figure;
stem(0:length(first_column)-1, first_column, 'filled');
title('Primeira Coluna da Tabela de Routh');
xlabel('Ordem do Termo (s^n)');
ylabel('Coeficiente');
xticks(0:length(first_column)-1);
grid on;
