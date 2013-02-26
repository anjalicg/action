require "benchmark"
class Sort 
  attr_accessor :inArr, :type
  def initialize(inarr,type)
    @inarr = inarr
    @type=type
  end
  def printArr()
    @inarr.each{|element|
    print element.to_s+", "
    }
    puts ""
  end
  def selectSort()
    
  end
  
  def mySort()    
    runTime=Benchmark.realtime do
    for i in 1..@inarr.length-1 do
      place=""
      ele=@inarr[i]
      #puts "For #{@inarr[i]} @ #{i} in #{printArr}"
      j=0      
      while(j<i and @inarr[j]<ele) do
        j+=1 # go to next element          
        end
       #   puts "...Need to insert this to #{j}..."
          place = j
        k=i
        while(k > place) do
          @inarr[k]=@inarr[k-1]
          k-=1;
        end #while end
          @inarr[place]=ele;
      end #for loop    
      end  
  puts "Run time : #{runTime*1000} ms"
    end #function end
    def bubble()  
  runTime=Benchmark.realtime do
  #insertion sort code here   
    for i in 0..@inarr.length-1 do
      for j in 0..@inarr.length-2 do
        if(@inarr[j]>@inarr[j+1]) then
          temp= @inarr[j]
          @inarr[j]=@inarr[j+1]
          @inarr[j+1]=temp          
        end        
      end        
    end      
	end  
  puts "Run time : #{runTime*1000} ms"
end  
      
  def insertionSort()
  
  #Other options for benchmarking
  #Benchmark.measure in "user     system      total        real"
  #Benchmark.bm along with "report" method
  runTime=Benchmark.realtime do
  #insertion sort code here   
    for i in 1..@inarr.length-1 do
      puts "i is #{i}:#{@inarr[i]}"
      curr=@inarr[i]
      j = i-1
      while ((j >= 0) and (@inarr[j] > curr)) do
        @inarr[j+1]=@inarr[j]
        j=j-1
      end
      @inarr[j+1]=curr    
      
    end
      
    
  
	end
  
  puts "Run time : #{runTime*1000} ms"
end
  
  
  
end
      puts "Implementation on insertion sort and bubble sort"

  s= Sort.new([3,2,5,7,1,9,8,6])
  s.mySort()
  s.printArr()
  o= Sort.new([3,2,5,7,1,9,8,6])
  o.bubble()
  o.printArr()
  #s= Sort.new([9,8,7,6,5,4,3,2,1])
  #s.mySort()
  #s.printArr()
#insertionSort([1,2,3,4,5])


