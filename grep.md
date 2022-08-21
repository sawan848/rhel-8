# Grep (Global Regular Expression Print)


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

```bash
#15
grep -E b.+ metasyntactic.list 
# foobar,bar,baz,wibble,wobble,wubble
#16
grep -E ^b.. metasyntactic.list 
#bar,baz
#17
grep -E ^b[[:alpha:]]+  metasyntactic.list 
# bar,baz
#18
grep -E b[[:alpha:]]+  metasyntactic.list 
#foobar,bar,baz,wibble,wobble,wubble
```
