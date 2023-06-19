# Introduction

This git is an attempt to make more understandable the use of this board : *https://www.aliexpress.com/item/4000587268145.html?spm=a2g0o.order_list.order_list_main.23.21ef5e5bLcQkdo*

The original files can be found in the descrition of aliexpress. I cloned everything on this git, here's the original makefile :
```
// ChangeLog 
// 1.0 - 1.1   modified to solve transmition between ch341 and ch341
// 1.1 - 1.2   Support high Linux kernel
Instructions

Note: 1.Please run followed executable programs as root privilege
      2.Current Driver support versions of linux kernel range from 2.6.25 to 3.13.x
      3.Current Driver support 32bits and 64bits linux systems

Usage:
	(load or unload linux driver of CH34x)
	//compile 
	#make
	//load ch34x chips driver
	#make load
	//unload ch34x chips driver
	#make unload
// 1.2 - 1.3 Fix some bugs			
```
# Common error
* On the arduino software if the default bootloader for the board is not working try the old one
* Check the path `/lib/module/$(shell uname -r)/build/` exist and contains the correct libray, just doing an ls of the path should be good. If it's empty check you don't have several kernel installed and check which one you're using. To check your kernel, run :
	* `uname -r`\
The `ch34x.c` have been written by the chinese compagny who did the board, if it fails to compile it may be link to wrong return arguments of the function. The type of return is different from one kernel to another version.