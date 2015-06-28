function [f_new,f_new_column_wise_norm] = normc(f_new)
%f_new = abs(f_new);
tol= 1e-6;
f_new_column_wise_norm = zeros(size(f_new,2),1);
for i = 1: size(f_new,2)
    f_new_column_wise_norm(i) = norm(f_new(:,i));
    if f_new_column_wise_norm(i) > tol
        f_new(:,i) = f_new(:,i)./f_new_column_wise_norm(i);
    end
end