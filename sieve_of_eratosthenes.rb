# example of generating prime numbers up to given input.
# The Sieve of Eratosthenes - cracking the coding interview 6th edition p 118
#
# @param [Int] max integer value of prime numbers
#
# @return [Array] Array of integers 
#
def list_of_primes(n)
  raise StandardError.new "Must be an integer greater or equal to 2" if n.class != Integer || n < 2

  range_list = Array (2..n)
  eval_num = 2.0

  while eval_num <= n do

    range_list = range_list.map do | cur_num |

      if cur_num == nil || eval_num >= cur_num
        cur_num
      else
        cur_num % eval_num == 0 ? nil : cur_num
      end
    end
    eval_num = eval_num + 1
  end 

  return range_list.compact
end

puts [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97] == list_of_primes(100)
