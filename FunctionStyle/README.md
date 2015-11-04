##Matlab函数心得FunctionStyle
###重载
Matlab没有C/C++里的通过函数参数类型来进行函数重载的方法，而重载是通过判断函数输入输出的个数来判断的。  
`nargin` : number of arguments input  
`nargout`:number of arguments output  
具体的做法就是声明一个很“齐全”的函数，然后内部通过输入输出个数来判断当前需要“补齐”哪些参数（赋予默认参数值）。
#####例子
`mymath`完成两个值的数学计算，默认为加法，`oper`为操作符号

```matlab
function ret = mymath(val1, val2, oper)
	if nargin < 2
		disp('not enough arguments');
	end
	
	if nargin==2
		oper = '+';
	end
	
	switch oper
		case '+'
			ret = val1 + val2;
		case '-'
			ret = val1 - val2;
		case '*'
			ret = val1*val2;
		case '/'
			if val2==0
				warning('the divid number is 0.');
			end
			ret = val1/val2;
		otherwise
			disp('operation unsupported');
			ret = nan
	end
end
```