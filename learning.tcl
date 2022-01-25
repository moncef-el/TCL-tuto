
#print text
puts "Hello World!" 

#Some built in variables 
puts $tcl_version
puts $tcl_library

# How to comment
if 0 {
   my first program in Tcl program
   Its very simple
}
puts stdout "Hello World!\n"  ;# how to comment in code line

#command substitution : we use brackets to put command inside
puts [expr 3*9]

#variable substitution : use $ to access content of variable
set a 5
puts "kolchi $a $a"
puts "n°[expr $a+5]\tLionel\tMessi\n"  ;# "" {} are the same

#new line&space
puts "a feen\tsadi9i\nkayn chi\nola ghi\tlferchi\n"

#lists
set myVariable {red green blue}
puts [lindex $myVariable 2]
set myVariable "red green blue"
puts [lindex $myVariable 1]

#associative array
set telaja(bid) 5
puts $telaja(bid)
set telaja(basla) 10
puts "telaja fiha $telaja(basla) baslat\n"

#read files
set file [open "data.txt" r]


#dynamic typing : tcl variable changes to required type
set a "2"
puts [expr $a+5]

#float : there must at least 1 decimal
set n "1"
puts [expr $n/3]
set n "1"
puts [expr $n/3.0]
set n "1"
set tcl_precision 5
puts [expr $n/3.0]

#if statement
#booleen : && is and, || is or, !(...) is not ...
set a 40
if {$a!=1 && $a<50} {
    puts "$a is not 1 and less then 50"
} elseif {!($a==30 || $a<30)} {
    puts "$a is not 30 or less then 30"
} else {
    puts "none of the above"
}

# for loop execution
for { set a 10}  {$a < 13} {incr a} {
   puts "value of a: $a"
}

#arrays
set languages(0) Tcl
set languages(1) "C Language"
for { set index 0 }  { $index < [array size languages] }  { incr index } {
   puts "languages($index) : $languages($index)"
}

#associative arrays
set personA(Name) "Dave"
set personA(Age) 14
foreach index [array names personA] {
   puts "\npersonA($index): $personA($index)\n"
}

#string comparison
set s1 "Hello"
set s2 "World"
set s3 "World"
puts [string compare $s1 $s2]
if {[string compare $s2 $s3] == 0} {
   puts "String \'s1\' and \'s2\' are same.";
}

if {[string compare $s1 $s2] == -1} {
   puts "String \'s1\' comes before \'s2\'.";
}

if {[string compare $s2 $s1] == 1} {
   puts "String \'s2\' comes after \'s1\'.";
}

set s1 "Hello World"
set s2 "o"
puts "First occurrence of $s2 in s1"
puts [string first $s2 $s1]
puts "Character at index 0 in s1"
puts [string index $s1 0]
puts "Last occurrence of $s2 in s1"
puts [string last $s2 $s1]
puts "Word end index in s1"
puts [string wordend $s1 20]
puts "Word start index in s1"
puts [string wordstart $s1 20]

#append command
#!/usr/bin/tclsh

set s1 "Hello" 
append s1 " World"
puts $s1

# scan command
puts "\nscan command for strings\n"
puts [scan "90" {%[0-9]} m]
puts [scan "abc" {%[a-z]} m]
puts [scan "abc" {%[A-Z]} m]
puts "[scan "ABC" {%[A-Z]} m]\n"

#list
set colors "black white orange"
lset colors 0 "brown"
lset colors 3 "black"
# set colors [lreplace $colors 1 2 green orange]
puts "colors list is $colors"

#dictionary

#procedure
puts "procedure example"
proc avg {numbers} {
   set sum 0
   foreach number $numbers {
      set sum  [expr $sum + $number]
   }
   set average [expr $sum/[llength $numbers]]
   return $average
}
puts [avg {70 80 50 60}]
puts [avg {70 80 50 }]

puts "2nd proc example"
proc factorial {number} {
   if {$number <= 1} {
      return 1
   } 
   return [expr $number * [factorial [expr $number - 1]]]

}
puts [factorial 3]
puts "[factorial 5]\n"

#files handling

set fp [open "input.txt" w+]
puts $fp "test\nline2\nlast line"
close $fp
set fp [open "input.txt" r]
set file_data [read $fp]
puts "\n$file_data\n"
close $fp

set fp [open "input.txt" r]

while { [gets $fp data] >= 0 } {
   puts $data
}
close $fp

variable dico [dict create 1 "hellooooo" 2 "hola"]
set word [dict get $dico 1]
puts $word
set word2 [dict get $dico 2]
puts $word2
