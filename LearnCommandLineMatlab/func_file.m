function func_file(a, b)

c = a + b;

fid = fopen('func_param.txt', 'w');
if (~fid)
	disp('file open failed.');
else
	fprintf(fid, '%f + %f = %f\n', a, b, c);
end
fclose(fid);

