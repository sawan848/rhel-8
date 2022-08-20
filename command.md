# basic command

<p style="color:yellow; background:black;margin-left:30%">

| Syntax | Description |
|--------| ------------|
|<a href="#man">man</a>| manual|
|<a href="#yum">yum/dnf</a> | package manger|
|<a href="#info">info</a>| informations|
|<a href="#help">help</a>| help about command|
|<a href="#mkdir"> mkdir</a> | make directory|
|<a href="#rmdir">rmdir </a> | remove directroy|
|<a href="#cp"> cp</a>| copy|
| <a href="#mv">mv</a> |move or rename |
|<a href="#rm">rm</a> | remove directory|
|<a href="#touch">touch</a>| create new file|
|<a href="#cat">cat</a> | create and read files|
|<a href="#cal">cal</a> | Calender|
|<a href="#date">date</a> | Date |
| <a href="#tail">tail</a> | print from bottom|
|<a href="#head">head</a> | print from head | 
|<a href="#history">history</a> | histroy of commands |
|<a href="#clear">clear</a> | clear the screen|
|<a href="#grep">grep</a> | clear the screen|
</p>

# man 
## example
```bash
    man ll
    man mkdir
```
# info
<p style="color:yellow; background:black">info is same as man does</p>

```bash
    info cp 
    info mkdir
```
# help

```bash
    mv --help
    mkdir --help

```

# mkdir
<div style="color:yellow; background:black">
<h2>
make directory mkdir a;</p>

mkdir a1 b1 c1 it create three folder/directory</p>
<p>
	mkdir ~/x1 this create a directory/folder on root directory
</h2>
</div>

# rmdir
## it works same as mkdir
```
    rmdir a1 b1 c1
```
# mv
## move or rename
```bash
    mv index.html ~/x1;
    x1 is destination folder

    mv index.html welcome.html
    
    rename index=old_name,welcome=new_name
```
# rm
## remove directory/folder or files
```
    rm -rf folder_name or 
    rm -rvf folder_name

```
# touch
## create blank files 
```bash
    touch index.html
    touch index{a..f}.html
```
# cat
## create and read files
```bash
    cat index.html
    cat > index.html 
    // input from user and print
    cat >> index.html
    //input from it put  insert  in the last
```
# cal
## calender

# date
## date

# tail
## read file from bottom 
```
    cat /etc/passwd | tail -4
    cat /etc/passwd | tali -7
    cat /etc/passwd | tali 
```
# head
## read file from head
```
    cat /etc/passwd | head -10
    cat /etc/passwd | head 8
    cat /etc/passwd | head 
```
# histroy
## it print all the histroy from 

# clear
## clear the screen/terminal
# grep
