
#grid [ttk::button .mybutton -text "Hello World"] 
#grid [label .myLabel -background red -text "Hello World" -relief ridge -borderwidth 3] -padx 100 -pady 100

# grid [label .myLabel -text "Label Widget" -textvariable labelText] 
# grid [text .myText -width 20 -height 5] 
# .myText insert 1.0 "Text\nWidget\n"
# grid [entry .myEntry -text "Entry Widget"]
# grid [message .myMessage -background red -foreground white -text "Message\nWidget"]
# grid [button .myButton1  -text "Button" -command "set labelText clicked"]


grid [frame .gender ]
grid [label .gender.label1  -text "Male" -textvariable myLabel1 ] 
grid [radiobutton .gender.maleBtn -text "Male"   -variable gender -value "Male" -command "set  myLabel1 Male"] -row 1 -column 2
grid [radiobutton .gender.femaleBtn -text "Female" -variable gender -value "Female" -command "set  myLabel1 Female"] -row 2 -column 2
.gender.maleBtn select
grid [label .myLabel2  -text "Range 1 not selected" -textvariable myLabelValue2 ] 
grid [checkbutton .chk1 -text "Range 1" -variable occupied1 -command {if {$occupied1 } {
   set myLabelValue2 {Range 1 selected}
} else {
   set myLabelValue2 {Range 1 not selected}
} }]
proc setLabel {text} {
   .label configure -text $text 
}