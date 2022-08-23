# Find command
## How to use find command in linux

find files by that match the premission,group,date,size and criteria
<style>
    b{
        color:yellow;
        font-size:17px;
    }
</style>
find / -options name_of_file
<br>

<ol style="list-style-type:lower-roman">
<li><a href="#findbyname">Basic find files for </a><b>finding files with name</b></li>
<li><a href="#findbypermission">find files based on their</a><b> Permission</b></li>
<li><a href="#findbyowner">search files based on</a><b> Owners and Group</b></li>
<li><a href="#findbydatetime">find file and directories based on</a> <b>Date and Time</b></li>
<li><a href="#findbysize">find files and directories based on</a> <b>size</b></li>
<ol/>


<hr>

|Options |Description|
|--------|-----------|
| name||
| iname||
|regex||
|type||
|group||
|atime||
|mtime||
|cmin||
|amin||
|daystart||
|perm||
## file type
|||
|---|--|
|f|file|
|d|directory|
|l|symlink|
|s|socket|
|b| block(buffered) special|
|c|character(unbuffered) special|

# File Permission : 
|Syntex|Descryption|
|-----|-----------|
|777|anyone can do anything(read/wite or execute)|
|755|you can do anything .other can only read and execute |
|711|you can do anything.other can only execute|
|644|you can read and write. other can only read|

## SGID
SGID is similar to SUID.the diffrence between both is that SUID assumes owner of the file permission and SGID assumes group  permissions when executing a file instead of logged in user inherit permission.

* * if set on a file,it allows the file to the exeuted as the group that owns the file (siminal SUID)
* * if set on the directory,any file created in the directroy will have their group ownership set to that of the directory owner.

## SUID
 The special permission for the user access level has a single function 
 * * A file with SUID always executed as the user passing the command.
 * * if the file owner doesn't have excute permission then use sn upppercase <b>'S'</b> here.
 * * here s where x would indicate execute permission for the user. 
## STICKY
This permission doesn't affect the individual file.Howerver at the ristricts file deletion.Only the owner(root) of  a file can remove the file within that directory.
a common example of this is <b>/tmp</b> direcory.
* * ls  -ld /tmp
<br>
<br><br>

# findbyname
```bash
    #1 file under current directory
    #a
    find . -name metasyntactic.list
    #b file name start with 'c'
    find . -name "c*" 
     #2 find in a certain directory
    find /home/hope/a -name index2.html
    #'i' ignore casesensitive
    find /home/hope/a -iname Index2.html
    #3 find directory
    find . -type d -name x1
    #4 find by extension
    find . -type f -name '*.txt'
    # it print all the .txt file from the current directory

```
# findbypermission

```bash
    #1 find file permission 0777
    find . -type f -perm 0777 -print
    #2 find file permission without 0777
    find . -type f ! -perm 0777 -print

    #3 find all the SGID bit files whose premission is 2644
    find . -perm  2644
    #4 find all the sticky bit set file permission  551
    find / -perm 1551
    #5 find SUID file
    find / -perm /u=s
    #6 find SGID files
    find / -perm /g=s
    #7 find read-only files
    find / -perm /u=r
    #8 find excecutable file
    find / -perm /a=x
    #9 find files with 777 permissions and chmod to 644
    find . -type f -perm 0777 -print -exec chmod 644 {}\; 
    #10 find directories with 777 permission and change to 755
    find . -type d -perm 777 -print -exec chmod 755 {} \;
    #11 find and remove single file
    find . -type f -name "name.txt" -exec rm -f {} \;

    #12 find and remove multiple file 
    find . -type f -name "*.txt" -exec rm -f {} \;
    find . -type f "*.mp3" -exec rm -f {} \;

    #13 find all empty files
    find /tmp -type f -empty

    #14 find all empty directories
    find /tmp -type d -empty

    #15 find all Hidden files
    find /tmp -type f -name ".*"

```
# findbyowner
```bash
    #1 find file based on user
    find . -user root -name "*.txt"
    find . -user root -iname "*.txt"
    #2 find all file based on user
    find /home -user root
    find /home -user hope
    #2 find all file based on group
    find /home -group root
    find /home -group hope
```
# findbydatetime
```bash
    #1 find last 50 days modified files 
    find / -mtime 50
    find . -mtime -2
    #2 find /last 50 days accessed file
    find . -atime 50
    #3 find last 50-100 days modified files
    find / -mtime +50 -mtime -100
    #4 find changed files in  last 1 hour 
    find . -cmin -60
    #4 find asscessed files in  last 1 hour 
    find . -amin -60

```
# findbysize
```bash
    #1 to find all 50mb file
    find / -size 50M
    #2 find size between 50MB -100MB
    find / -size +50M -size -100M
    #3 find and delete 100MB files
    find / -type -f -size +100 -exec rm -f {} \;
    #4 find specific files and Delete
    find / -type f -name *.mp3 -size +10M -exec rm {} \;

```
