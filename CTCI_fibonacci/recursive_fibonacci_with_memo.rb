# starts with 0, 1, and then each following value is the sum of the two
# preceding values. 0, 1, 1, 2, 3, etc...
# p 133, cracking the coding interview 6th edition
#
# @param [Int] the Nth number in the sequence
#
# @return [Int] the Nth number from the Fibonacci sequence
#
def fibonacci_value(n)
  Raise StandardError "input must be integer 0 or greater" if n.class != Integer || n < 0

  memo = Array.new( n+1 , 0)
  memo[1] = 1 

  fib_helper(n, memo)
end


# @param [Int] the Nth number in the sequence
# @param [Array] memo, array storing the fibonacci sequence once calculated
#
# @return [Int] the Nth number from the Fibonacci sequence
#
def fib_helper(n, memo)
  return n if n == 0 || n == 1

  return memo[n] if memo[n] != 0

  memo[n] = fib_helper(n-1, memo) + fib_helper(n-2, memo) 
  memo[n]
end

puts fibonacci_value(1000)
