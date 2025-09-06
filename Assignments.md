#Assignments

## Task 1: 
Create a directory dir1
create a file "file1.txt"
add some content in file1.txt

create another directory dir2
copy file "file1.txt" in dir2


```bash
rastogi@fedora:~/Desktop$ mkdir dir1
rastogi@fedora:~/Desktop$ touch dir1/file1.txt
rastogi@fedora:~/Desktop$ echo "Hi i am Akshat" >> dir1/file1.txt
rastogi@fedora:~/Desktop$ mkdir dir2
rastogi@fedora:~/Desktop$ cp dir1/file1.txt dir2/file1.txt
rastogi@fedora:~/Desktop$ cat dir2/file1.txt
Hi i am Akshat
```
## Task 2 : 
change directory to dir1
create another file "file2.txt"
cut and past this file to dir2 (move)
rename "file2.txt" to newFile.txt

``` bash
rastogi@fedora:~/Desktop$ touch dir1/file2.txt
rastogi@fedora:~/Desktop$ mv dir1/file2.txt dir2/newFile.txt
rastogi@fedora:~/Desktop$ ls -ltr dir2/
total 4
-rw-r--r--. 1 rastogi rastogi 15 Sep  6 18:41 file1.txt
-rw-r--r--. 1 rastogi rastogi  0 Sep  6 18:57 newFile.txt
```
Task -3 ->
Create a User <user> using "adduser"
Login to the user <user>
Create a shell script to print some value using "echo" in his home dir
login to the default user
execute the shell script being default user

```bash
rastogi@fedora:~/Desktop$ sudo adduser -m user
rastogi@fedora:~$ sudo passwd user
rastogi@fedora:~$ su - user
user@fedora:~$ vim script.sh
user@fedora:~$ chmod 707 script.sh
user@fedora:~$ logout
rastogi@fedora:~$ sudo chmod 777 /home/user
rastogi@fedora:~$ bash /home/user/script.sh
This is a script
```
Task 4 ->
Create a User <user> using "adduser"
Login to the user <user>
Create a shell script to print some value using "echo" in his home dir
login to the default user
add user to the "group" of the dir
execute the shell script being default user

I used same script for it but changed its permissions to group too.

```bash
rastogi@fedora:~$ sudo usermod -aG user rastogi
rastogi@fedora:~$ bash /home/user/script.sh
This is a script
rastogi@fedora:~$ 
```

Task 5 ->
First check your current working directory
Now create directory with name "linux" in your current directory.
Then create a another directory with name "Assignment-01" inside your "linux" directory .
Now create one more directory inside "/tmp" with name "dir1" without changing your present directory.
At last create two more directories having below tree structure .It should create a below structure via single command only .
/tmp
  - dir1
      - dir2
        - dir3
Find a command that will delete a "dir3" that you have created before.
Now create a empty file with your "firt-name" in /tmp directory.
After creating a empty file , add "This is my first line " into a file without using any editor.
Now add one more line "this is a additional content " into a same file .Make sure it will not overwrite the previous line of the file.
Then create new file with your "last-name" along with some content like "last-name is my last name".Do not use any editor
Now add "this is line at the beginning" into "last-name" file in such a manner that it will add the line at beginning of the file.Do not use any editor.
Then add some more 8-10 lines to the same file .
Now find a command that will show:
top 5 lines of the file.
bottom 2 lines of the file.
only 6th line of the file.
3-8 lines of the file .
Find a command that will list below things of /tmp directory
list all content(including hidden files)
list only files
list only directories
Now copy the "last-name" into the /tmp/dir2 with same name.
Then again copy the "last-name" into the /tmp/dir2, this time with different name i.e "last-name".copy
Now change the name of the "first-name" file to some other name at same location .
Find a command that will move the "last-name" file to /tmp/dir1
find a command that will clear the content of /tmp/dir2/"last-name".copy .Make sure it will not even contain empty line .
Now delete the same file i.e /tmp/dir2/last-name.copy Note : Do not use sed command in this assignment.
``` bash
rastogi@fedora:~/Desktop$ pwd
/home/rastogi/Desktop
rastogi@fedora:~/Desktop$ mkdir linux
rastogi@fedora:~/Desktop$ mkdir -p linux/Assignment-01
rastogi@fedora:~/Desktop$ mkdir -p /tmp/dir1
rastogi@fedora:~/Desktop$ mkdir -p /tmp/dir1/dir2/dir3
rastogi@fedora:~/Desktop$ rm -r /tmp/dir1/dir2/dir3
rastogi@fedora:~/Desktop$ touch /tmp/akshat
rastogi@fedora:~/Desktop$ echo "This is my first line" >> /tmp/akshat
rastogi@fedora:~/Desktop$ echo "this is a additional content " >> /tmp/akshat
rastogi@fedora:~/Desktop$ cat /tmp/akshat
This is my first line
this is a additional content 
rastogi@fedora:~/Desktop$ echo "This is my last name" >> /tmp/rastogi
rastogi@fedora:~/Desktop$ sed -i "1ithis is line at the beginning" /tmp/rastogi
rastogi@fedora:~/Desktop$ vim textfile.txt
rastogi@fedora:~/Desktop$ cat textfile.txt >> /tmp/rastogi
rastogi@fedora:~/Desktop$ head -5 /tmp/rastogi
this is new line at the beginning
this is line at the beginning
this is new line at the beginning
This is my last name
The whisper of the wind carried a forgotten tune.
rastogi@fedora:~/Desktop$ tail -2 /tmp/rastogi

The stars looked back, indifferent and ancient.
rastogi@fedora:~/Desktop$ head -8 /tmp/rastogi | tail -6
this is new line at the beginning
This is my last name
The whisper of the wind carried a forgotten tune.

He checked his watch, though time had ceased to matter.
rastogi@fedora:~/Desktop$ ls -ltr /tmp
rastogi@fedora:~/Desktop$ ls -ltr /tmp | grep "^d"
rastogi@fedora:~/Desktop$ ls -ltr /tmp | grep "^-"
rastogi@fedora:~/Desktop$ cp /tmp/rastogi /tmp/dir1/dir2
rastogi@fedora:~/Desktop$ cp /tmp/rastogi /tmp/dir1/dir2/rastogi.copy
rastogi@fedora:~/Desktop$ mv /tmp/akshat /tmp/other_akshat
rastogi@fedora:~/Desktop$ mv /tmp/rastogi /tmp/dir1
rastogi@fedora:~/Desktop$ >> /tmp/dir1/dir2/rastogi.copy
rastogi@fedora:~/Desktop$ rm /tmp/dir1/dir2/rastogi.copy
```
Task 6: 
Create user named neha, vipul and abhishek
create group named linux
Create group named sigma
Change neha and abhishek primary group to sigma
change neha and abhishek secondary group to linux
create group named alpha
create user nkhil and priyashi and add them to linux and aplha group with single command
Change all user home directory permission to
A user should have read,write, execute access to home directory
All the users of same team should have read and excute access to home directory of fellow team members.
others should have only execute permission to user's home directory
create these directory structure for all user
home directory of user
team
linux
change permission for team directory only team members have full access
change permission for linux directory only linux trainer have full access
check if alpha team user can access sigma team directory.
check vipul user can access sigma or
change vipul user shell to make it service user.
force abhishek user to change its password on next login.
change nikhil user password.
list all user and group you have created
check which shell is added to neha user as default.
check the deafult permission of file and directory and how to change it
now delete vipul user.
delete linux group.


```bash
[ec2-user@ip-172-31-1-31 ~]$ sudo useradd -m neha
[ec2-user@ip-172-31-1-31 ~]$ sudo useradd -m vipul
[ec2-user@ip-172-31-1-31 ~]$ sudo useradd -m abhishek
[ec2-user@ip-172-31-1-31 ~]$ sudo groupadd linux
[ec2-user@ip-172-31-1-31 ~]$ sudo groupadd sigma
[ec2-user@ip-172-31-1-31 ~]$ sudo usermod -g sigma neha
[ec2-user@ip-172-31-1-31 ~]$ sudo usermod -g sigma abhishek
[ec2-user@ip-172-31-1-31 ~]$ sudo usermod -g sigma neha
[ec2-user@ip-172-31-1-31 ~]$ sudo usermod -g sigma abhishek
[ec2-user@ip-172-31-1-31 ~]$ sudo usermod -aG linux neha
[ec2-user@ip-172-31-1-31 ~]$ sudo usermod -aG linux abhishek
[ec2-user@ip-172-31-1-31 ~]$ sudo groupadd alpha
[ec2-user@ip-172-31-1-31 ~]$ sudo useradd -m -G linux,alpha nikhil
[ec2-user@ip-172-31-1-31 ~]$ sudo useradd -m -G linux,alpha priyashi
[ec2-user@ip-172-31-1-31 ~]$ sudo chmod 751 /home/neha
[ec2-user@ip-172-31-1-31 ~]$ sudo chmod 751 /home/vipul
[ec2-user@ip-172-31-1-31 ~]$ sudo chmod 751 /home/abhishek
[ec2-user@ip-172-31-1-31 ~]$ sudo chmod 751 /home/nikhil
[ec2-user@ip-172-31-1-31 ~]$ sudo chmod 751 /home/priyashi
[ec2-user@ip-172-31-1-31 ~]$ sudo chgrp sigma /home/neha/team
[ec2-user@ip-172-31-1-31 ~]$ sudo chmod 770 /home/neha/team
[ec2-user@ip-172-31-1-31 ~]$ sudo chgrp sigma /home/abhishek/team
[ec2-user@ip-172-31-1-31 ~]$ sudo chmod 770 /home/abhishek/team
[ec2-user@ip-172-31-1-31 ~]$ sudo chgrp alpha /home/nikhil/team
[ec2-user@ip-172-31-1-31 ~]$ sudo chmod 770 /home/nikhil/team
[ec2-user@ip-172-31-1-31 ~]$ sudo chgrp alpha /home/priyashi/team
[ec2-user@ip-172-31-1-31 ~]$ sudo chmod 770 /home/priyashi/team
[ec2-user@ip-172-31-1-31 ~]$ sudo chgrp linux /home/neha/linux
[ec2-user@ip-172-31-1-31 ~]$ sudo chmod 770 /home/neha/linux
[ec2-user@ip-172-31-1-31 ~]$ sudo chgrp linux /home/abhishek/linux
[ec2-user@ip-172-31-1-31 ~]$ sudo chmod 770 /home/abhishek/linux
[ec2-user@ip-172-31-1-31 ~]$ sudo chgrp linux /home/nikhil/linux
[ec2-user@ip-172-31-1-31 ~]$ sudo chmod 770 /home/nikhil/linux
[ec2-user@ip-172-31-1-31 ~]$ sudo chgrp linux /home/priyashi/linux
[ec2-user@ip-172-31-1-31 ~]$ sudo chmod 770 /home/priyashi/linux

```
Task 7 ->































