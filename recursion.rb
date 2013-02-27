def factorial(n)
  #puts "factorial for #{n}"
  if n>1 then return n*factorial(n-1);
  else return 1;
  end
    
end
  #puts  factorial(5)
  #puts  factorial(0)
 
def fibonacci(n)
  if (n==1) then return 1;
  elsif (n==0) then return 0;
  else return fibonacci(n-1)+fibonacci(n-2);
  end
    
end

  for i in 0..50
    #benchmark here
    puts fibonacci(i)
  end
  

#fibonaci
#factorial
# golden ratio?
#Euclid's GCD algorithm
#Dijkstra's GCD algorithm
=begin
Problem 3 (Compute n mod m without using %):
           Note: Divisor cannot be zero, otherwise in this code it would
                 be called recursively forever. Also,we may consider the case
                 that either val or divisor are negative. In this case, it is 
                 possible for this code to lead a stack overflow (i.e., the call
                 stack runs out of memory).

------------***------------
Problem 1, Reverse a string recursively:

  /* From the API: String substring(int beginIndex, int endIndex)
   *      Returns a new string that is a substring of this string.
   *      The substring begins at the specified beginIndex and extends 
   *      to the character at index endIndex - 1.
   */

---------------****----------------

=end
