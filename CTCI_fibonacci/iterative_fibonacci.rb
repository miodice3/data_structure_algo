# starts with 0, 1, and then each following value is the sum of the two
# preceding values. 0, 1, 1, 2, 3, etc...
# p 131, cracking the coding interview 6th edition
#
# @param [Int] the Nth number in the sequence
#
# @return [Int] the Nth number from the Fibonacci sequence
#
def fibonacci_value(n)
  Raise StandardError "input must be integer 0 or greater" if n.class != Integer || n < 0

  return n if n == 0 || n == 1
  i = 2
  f_hsh = {0=>0, 1=>1}
  while i <= n do
    f_hsh[i] = f_hsh[i-1] + f_hsh[i-2]
    i += 1
  end
  puts f_hsh[n]
  f_hsh[n]
end

fibonacci_value(1000)
