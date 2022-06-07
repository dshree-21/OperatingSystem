# OperatingSystem

Xv6 is a re-implementation of the Unix 6th edition in order to use as a learning tool. xv6 was developed by MIT as a teaching operating system for their “6.828” course. This is a lightweight operating system where the time to compile is very low and it also allow remote debugging.
Now, start xv6 system on QEMU and when it booted up, run ls command to check whether our program is available for the user. 

To prepare a system call we need to make changes to the below listen files of the XV6 zip folder.
	• Syscall.h
  
	• Syscall.c
  
	• Sysproc.c
  
	• Usys.S
  
	• User.h

To create a command in XV6 Operating System we make the changes in the following files-
	• Syscall.h
  
	• Syscall.c
  
	• Sysproc.c
  
	• Usys.h
  
	• User.h
  
	• Proc.h
  
	• Defs.h
  
	• Proc.c
  
	• C code file to write your logic
  
	• MakeFile
	

In this project I have created commands in xv6 OS which will run on Qemu prompt.

1)Create a System call getppid ()

2)Create ps command which will find pid, ppid, state of process 

3)Create cal command (same format as in Ubuntu)

4)Create a system call waitpid(int pid) which will count processes to wait for.


For stepwise commands of all the four system calls/ commands you can refer the 
XV6_Project_Debashree.pdf attached. It contains full detailed code at every step along with the screenshots of the outputs and the changes made to each and every file.I have also uploaded the direct file in which key changes have been made by me during this project.

To run the commands download the zip file of XV6 and install QEMU command prompt. Type the following command in XV6 operating system to open QEMU command prompt.
	 make clean
	 make qemu-nox
	
After the QEMU prompt opens then, you can test all the four commands one by one by writing the command name.
Example- prd   (as in case 1)

--------------------------------------------------------------------------------------------------------------------------------------------------------------------
