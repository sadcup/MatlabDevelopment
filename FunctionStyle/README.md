##Matlab函数心得FunctionStyle
###重载
Matlab没有C/C++里的通过函数参数类型来进行函数重载的方法，而重载是通过判断函数输入输出的个数来判断的。  
`nargin` : number of arguments input  
`nargout`:number of arguments output  
具体的做法就是声明一个很“齐全”的函数，然后内部通过输入输出个数来判断当前需要“补齐”哪些参数（赋予默认参数值）。
#####例子
