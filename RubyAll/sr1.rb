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
puts "Class of the here document variable used for executing commands"+command.class.to_s
  puts "Converting numbers between bases:-" + "100".to_i(2).to_s
  
  print "printing all Ruby Rbconfig parameters"
  RbConfig::CONFIG.each{|k,v|
    puts "#{k} --> #{v}"
    }
  
  ##print "=================\nDefining a class here \n=================\n"
  
  
  
  
  
  
  




