# Grep (Global Regular Expression Print)

<li>it is used to filter the string or line of text a certain string</li>
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

```bash
    #19
    cat sports.txt | grep Virat
    cat sports.txt | grep -i Virat
    #20
    grep Virat sports.txt
    grep -i virat sports.txt 
    #21
    cat sports.txt | grep -v Virat
    #22
    cat sports.txt | grep -A1 Virat
    #23
    cat sports.txt | grep -B2  Rahul
    #24
    cat sports.txt | grep -C1  Rahul
    
```
|Syntax|Description|
|------|-----------|
|-i | ignore case sensitive|
|-v |it exclude the related quey,it ignore the that particular string| 
|iv/vi|it show case insensitive way or exclude the related query |  
|A1| it print the current line and print after one line. ex if A2 it print current line and print after two line |
|B1| it print the current line and print below one line. ex if B2 it print current line and print below two line |
|C1| it print the one line before and one line after. ex if C2 it print two line before and two line after |
