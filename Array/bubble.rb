require "benchmark"
class Sort 
  attr_accessor :arr
  def initialize(inarr)
    @arr = inarr
  end
  def printArr()
    @arr.each{|element|
    print element.to_s+", "
    }
    puts ""
  end      
  def bubble()  
  runTime=Benchmark.realtime do
  #insertion sort code here   
    for i in 0..@arr.length-1 do
      for j in 0..@arr.length-2 do
        if(@arr[j]>@arr[j+1]) then
          temp= @arr[j]
          @arr[j]=@arr[j+1]
          @arr[j+1]=temp          
        end        
      end        
    end      
	end  
  puts "Run time : #{runTime*1000} ms"
end
  
  
  
end
puts "Implementation on insertion sort"

  s= Sort.new([3,2,5,7,1,9,8,6])
    s.bubble()
  s.printArr()
  s= Sort.new([9,8,7,6,9,4,3,2,1])
    s.bubble()
  s.printArr()


