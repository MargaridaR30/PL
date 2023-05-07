A = [1 2 11 17; 3 7 37 57];
b = [5; 16];
C = [1 1 1 1; 1 -1 1 3];
l = [3; 1];

options = optimoptions('linprog','Display','off');

t = linspace(0, 10, 100);
admissible = zeros(1, length(t));

for i = 1:length(t)
  u = [5; t(i)];
  [x, fval, exitflag] = linprog(-ones(4,1), A, b, C, u, [], [], [], options);
  if exitflag == 1
    admissible(i) = t(i);
  end
end

admissible = admissible(admissible ~= 0);

fprintf('Valores de t para os quais o sistema é admissível: %s\n', mat2str(admissible));
fprintf('Valores de t para os quais o sistema é inadmissível: %s\n', mat2str(setdiff(t, admissible)));


