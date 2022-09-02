#!/usr/bin/bash

#Note ftp are insecure and no more used
#FTP sends the password in plain text
#this program ios for demonstration about the 
#use case of here Document for automation the thing

ftp_server="10.0.2.15"
user_name="hope"
password="hope"
direcory_where_file_is_present="a/"
FILENAME="filename.txt"

ftp -n $ftp_server << EOF
quote USER $user_name
quote PASS $password
cd $direcory_where_file_is_present
bin
hash
get $FILENAME
quit
EOF
