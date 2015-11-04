clear; clc; close all;

disp('running func ......');
func;

disp('running func_param ......');
func_param(1, 2);

disp('running func_file ......');
func_file(2, 4);

disp('running func_file1 ......');
func_file1('input.txt');