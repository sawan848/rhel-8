# Regular Expression
<b> $ info grep "Regular Expressions"</b>

### there are three types of regular expression
<ol>
    <li>Basic Regular Expression (BRE)</li>
    <li>Extented Regular Expression (ERE)</li>
    <li>Perl Regular Expression (PRE)</li>
</ol>

# Variants

| Syntax | Description |
|--------| ------------|
|<a href="#g">-G</a>| use basic regex(this is the default )|
|<a href="#e">-E</a>| Extended Regex|
|<a href="#f">-F</a>|Interpret the search pattern as a fixed string,not regex|
|<a href="#p">-P</a>| use use Perl regex(PCRE)|


# Regular Expression
| Syntax | Description |
|--------| ------------|
|<b>.</b>|Any single character|
|<b>?</b>|Match preceding item zero or one time |
|<b>*</b>|Match preceding item zero or more times|
|<b>+</b>|Match preceding item one or more time |
|<b>{2}</b>|Match preceding item two time|
|<b>{3,}</b>|Match preceding item three or more times|
|<b>{,4}</b>|Match preceding item at most four times|
|<b>{1,5}</b>|Match preceding item at least once,but no more than five times|
|<b>[A,B]</b>|Match A or B &nbsp; &nbsp; &nbsp;<span>[:alpha:] Alphabetic Character</span>|
|<b>[3-9]</b>|Matchh all digits 3 to 9&nbsp; &nbsp;<span>[:alnum:] Alphanumeric Character</span>|
|<b>^</b>|Start of a line|
|<b>$</b>|End of a line |
|<b>\s</b>|Space <span>[:space:]Space
</span>|