##命令行运行Matlab
###1 准备工作，设置运行环境
运行环境：Mac 10.10

默认情况下，matlab的命令在系统中是不能识别的，所以需要把matlab添加到环境当中  
开启一个终端，编辑环境变量文件，例如
	
	vim ~/.bash_profile

然后设置matlab命令路径

	export PATH=$PATH:/Applications/MATLAB_R2014b.app/bin

为了增加以后运行的便利性，可以强制的将命令行运行的matlab设置为不启动桌面的运行方式
  
	alias matlab='matlab -nodesktop'

最后

	source ~/.bash_profile

使刚才的修改生效
###2 常用命令
所有的运行方法可以通过
<http://cn.mathworks.com/help/matlab/ref/matlablinux.html>查阅  
这里总结出常用的命令如下

	matlab -nodesktop -r myscript

######ps: 这里的最后myscript一定要不包含.m，如果是自定义的函数有参数的话，则使用双引号扩起来

  
Execute the specified MATLAB statement, specified as a string or as the name of a MATLAB script or function. If statement is MATLAB code, **enclose the string with double quotation marks**. If statement is the name of a MATLAB function or script, **do not specify the file extension and do not use quotation marks**. Any required file must be on the MATLAB search path or in the startup folder.
另外，还可以运行m文件

	matlab < myscript.m
	matlab < myscript.m > output.txt
前一个命令是直接运行文件，
后一个命令是运行m文件，并将运行的所有结果打印到output.txt中


###3 几个例子

- (1) 直接运行m文件,并将结果打印到屏幕  

		matlab < test.m
	
- (2) 直接运行m文件，并将结果打印到output.txt
		
		matlab < test.m > output.txt
		
- (3) 直接运行函数,注意不能加.m

		matlab -r func
		
- (4) 直接运行带有参数的函数
		
		matlab -r "func_param(2, 3)"
###4 注意事项
- 当使用`-r`运行的时候，本质上是运行Matlab脚本，所以不能够带有文件夹路径等东西，否则系统不能识别。例如一个函数叫做func，存放在Documents目录下面，那么`matlab -r /Documents/func`或者`matlab -r "/Documents/func"`都是**不能**正常运行的
- 遇到这种状况使用`<`最为有效，即**`matlab < /Documents/func.m`**