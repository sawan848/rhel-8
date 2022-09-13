
  [1msed[0m

  Edit text in a scriptable manner.[0m
  More information: https://www.gnu.org/software/sed/manual/sed.html.[0m

  [32m- Replace the first occurrence of a regular expression in each line of a file, and print the result:[0m
    [31msed 's/[0mregular_expression[0m[31m/[0mreplace[0m[31m/' [0mfilename[0m[31m[0m

  [32m- Replace all occurrences of an extended regular expression in a file, and print the result:[0m
    [31msed -r 's/[0mregular_expression[0m[31m/[0mreplace[0m[31m/g' [0mfilename[0m[31m[0m

  [32m- Replace all occurrences of a string in a file, overwriting the file (i.e. in-place):[0m
    [31msed -i 's/[0mfind[0m[31m/[0mreplace[0m[31m/g' [0mfilename[0m[31m[0m

  [32m- Replace only on lines matching the line pattern:[0m
    [31msed '/[0mline_pattern[0m[31m/s/[0mfind[0m[31m/[0mreplace[0m[31m/' [0mfilename[0m[31m[0m

  [32m- Delete lines matching the line pattern:[0m
    [31msed '/[0mline_pattern[0m[31m/d' [0mfilename[0m[31m[0m

  [32m- Print the first 11 lines of a file:[0m
    [31msed 11q [0mfilename[0m[31m[0m

  [32m- Apply multiple find-replace expressions to a file:[0m
    [31msed -e 's/[0mfind[0m[31m/[0mreplace[0m[31m/' -e 's/[0mfind[0m[31m/[0mreplace[0m[31m/' [0mfilename[0m[31m[0m

  [32m- Replace separator `/` by any other character not used in the find or replace patterns, e.g. `#`:[0m
    [31msed 's#[0mfind[0m[31m#[0mreplace[0m[31m#' [0mfilename[0m[31m[0m

