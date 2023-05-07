A = [16 2 3 13; 5 11 10 8; 9 7 6 12; 4 14 15 1];
b = [1; 1; 1; -1];
rref_A = rref([A b]);
rank_A = rank(A);
rank_Ab = rank([A b]);

if rank_A ~= rank_Ab
    disp('Sistema inadmissível')
else
    x = linsolve(A, b);
    disp(x)
end
