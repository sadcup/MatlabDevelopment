function func_file1(filename)

fid = fopen(filename, 'r');
if ~fid
    disp('fileopen failed!');
else
    A = fscanf(fid, '%f %f');
    c = A(1) + A(2);
    disp([num2str(A(1)) ' + ' num2str(A(2)) ' = ' num2str(c)]);
end;
