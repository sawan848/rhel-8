# Find command
## How to use find command in linux

find files by that match the premission,group,date,size and criteria

find / -options name_of_file

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

