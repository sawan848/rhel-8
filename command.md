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
|<a href="#tac">tac</a> | create and read files|
|<a href="#cal">cal</a> | Calender|
|<a href="#date">date</a> | Date |
| <a href="#tail">tail</a> | print from bottom|
|<a href="#head">head</a> | print from head | 
|<a href="#history">history</a> | histroy of commands |
|<a href="#clear">clear</a> | clear the screen|
|<a href="#grep">grep</a> | clear the screen|
|<a href="#ls">ls</a> | listing a file|
|<a href="#gzip">gzip</a> | listing a file|
|<a href="#tar">tar</a> | listing a file|
|<a href="#more">more</a> | listing a file|
|<a href="#less">less</a> | listing a file|
|<a href="#find">find</a> | listing a file|
|<a href="#type">type</a> | listing a file|
|<a href="#cut">cut</a> | listing a file|
|<a href="#file">file</a> | listing a file|
|<a href="#export">export</a> | listing a file|
|<a href="#lsblk">lsblk</a> | listing a file|
|<a href="#who">who</a> | listing a file|
|<a href="#where">where</a> | listing a file|
|<a href="#alias">alias</a> | listing a file|
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
# Regular Expression
### there are three types of regular expression
<ol>
    <li>Basic Regular Expression (BRE)</li>
    <li>Extented Regular Expression (ERE)</li>
    <li>Perl Regular Expression (PRE)</li>
</ol>



# grep
<li>it is use to search for line a certiain pattern in string</li>

```bash
    cat > name.txt
    Tania 
    Laura
    Valentina
    # ctr+d to save 

    #1 
        grep u names.txt # Laura
        grep e names.txt # Valentina
        grep i names.txt # Tania,Valentina
    #2 
        grep a names.txt 
        # Tania,Laura,Valentina
        grep ia names.txt # Tania
    #3 
        grep ai names.txt # empty
        grep in names.txt # Valentina
    

```


```bash
    cat >list
    Laura
    Tania
    #4 
    grep -E 'i|a' list # Laura,Tania
    #5
    grep -G 'i|a' list # empty
    grep -G 'i\|a' list # Laura,Tania

```


```bash
    cat > list2
    ll
    lol
    lool
    loool
    #6
    grep -E 'o*' list2 # ll,lol,lool,loool
    #7
    grep -E 'o+' list2 # lol,lool,loool
```

```bash
    cat >> names.txt
    Fleur
    Floor

    #8 
    grep a$ names.txt # a$ '$' indicates the end of the string
    # Tania,Laura,Valentina
    grep r$ names.txt # Fleur ,Floor
    #9
    grep ^F names.txt # Fleur ,Floor
    #10
    grep a$ names.txt | wc
     #3 3 22   
    grep 'r$' names.txt
     #11
    grep a$ names.txt | wc -l
     #3  -l print no of lines 
```

```bash
    seperating words
    cat > test.txt
    The governer is governing.
    The winter is over.can you get over there.
    #12
    grep over test.txt 
    #13
    grep '\bover\b' test.txt 
    #14 
    grep -w over test.txt


```

# ls
<p>listing a file