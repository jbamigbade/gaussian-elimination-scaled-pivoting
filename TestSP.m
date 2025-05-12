more off;
clc;
clear all;

% Define the original matrix A
A = [0.4096 0.1234 0.3678 0.2943;
     0.2246 0.3872 0.4015 0.1129;
     0.3645 0.1920 0.3781 0.0643;
     0.1784 0.4002 0.2786 0.3927];

% Define the right-hand side vector b
b = [0.4043; 0.1550; 0.4240; 0.2557];

% Apply Gaussian elimination with scaled partial pivoting
[A_modified, l] = Gauss(A);

% Solve the system
x = Solve(A_modified, l, b);

% Display results
fprintf('\nSolution x for the original system:\n');
disp(x);

% Modify A by introducing a small error in one element
A_err = A;
A_err(3,1) = 0.3345;  % Mistyped value

% Apply Gaussian elimination with scaled partial pivoting on the modified matrix
[A_err_modified, l_err] = Gauss(A_err);

% Solve the modified system
x_err = Solve(A_err_modified, l_err, b);

% Display results
fprintf('\nSolution x for the modified system:\n');
disp(x_err);

% Compute and display difference in solutions
diff = abs(x - x_err);
fprintf('\nDifference in solutions due to numerical error:\n');
disp(diff);

% Save the output to a text file inside Bamigbade_Oluwaseyi_hw4 folder
output_file = 'C:/Users/johnb/OneDrive/Desktop/Numerical Analysis/Bamigbade_Oluwaseyi_hw4/output.txt';
fid = fopen(output_file, 'w');
fprintf(fid, 'Solution x for the original system:\n');
fprintf(fid, '%f\n', x);
fprintf(fid, '\nSolution x for the modified system:\n');
fprintf(fid, '%f\n', x_err);
fprintf(fid, '\nDifference in solutions due to numerical error:\n');
fprintf(fid, '%f\n', diff);
fclose(fid);

fprintf('\nResults have been saved to output.txt in Bamigbade_Oluwaseyi_hw4 folder.\n');
