print "This is sample ruby syntax file for \"print\" function \n"
puts "\"puts\" does the same but adds as new line at the end"
#'Here' document sample
print "=================\nHere document sample\n=================\n"
here=<<EOF
This is a here document
This is within the here document
EOF
print here
print "=================\nHere document to execute commands \n=================\n"
command=<<`datec`
 date
 ls -l
pwd
datec
print command




