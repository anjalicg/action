def hasVar(prop)
  varList=Array.new()
  prop.each{|k,v|
    if /\$\{.*\}/.match(v)
      varList.push(v)[2]
    end
    puts varList
    }
  
    
end

def load()
  confFile= File.new('config.txt','r')
props=Hash.new()
begin  
  confFile.readlines.each{|line|
  props[line.split("=")[0].chomp]=line.split("=")[1].chomp    
    }
  confFile.close  
  return props
rescue
 	puts "Inside rescue"
 	confFile.close
end

end

hm= load
puts hm
hasVar(hm)




  
