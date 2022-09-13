 awk 'match($0,/o/) {print $0 " has \"o\" chatacter at " RSTART}' numbered.txt 
awk '{print substr($0,4)}' numbered.txt
df | awk 'NR==3,NR==7 {print NR,$0}'
* * df | awk 'END {print NR}'

  [1mawk[0m

  A versatile programming language for working on files.[0m
  More information: https://github.com/onetrueawk/awk.[0m

  [32m- Print the fifth column (a.k.a. field) in a space-separated file:[0m
    [31mawk '{print $5}' [0mfilename[0m[31m[0m

  [32m- Print the second column of the lines containing "foo" in a space-separated file:[0m
    [31mawk '/[0mfoo[0m[31m/ {print $2}' [0mfilename[0m[31m[0m

  [32m- Print the last column of each line in a file, using a comma (instead of space) as a field separator:[0m
    [31mawk -F ',' '{print $NF}' [0mfilename[0m[31m[0m

  [32m- Sum the values in the first column of a file and print the total:[0m
    [31mawk '{s+=$1} END {print s}' [0mfilename[0m[31m[0m

  [32m- Print every third line starting from the first line:[0m
    [31mawk 'NR%3==1' [0mfilename[0m[31m[0m

  [32m- Print different values based on conditions:[0m
    [31mawk '{if ($1 == "foo") print "Exact match foo"; else if ($1 ~ "bar") print "Partial match bar"; else print "Baz"}' [0mfilename[0m[31m[0m

  [32m- Print all lines where the 10th column value equals the specified value:[0m
    [31mawk '($10 == value)'[0m

  [32m- Print all the lines which the 10th column value is between a min and a max:[0m
    [31mawk '($10 >= min_value && $10 <= max_value)'[0m

