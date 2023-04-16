clear all; close all; clc
A = reshape(1:4,[2,2])';

for i = 1:2
    for j = 1:2
        fprintf("elements of A %2.1f\n",A(i,j))
    end
end