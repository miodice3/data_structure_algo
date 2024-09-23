# example of threads within ruby
#
# @param[Integer] num_threads
#
def multi_thread(num_threads)
  puts "fn starting"
  threads = []
  i = 0
  while i < num_threads do
    puts i
    threads << Thread.new(i) do | thread_num |
      puts "thread # #{thread_num} starting work"
      sleep(1)
      puts "thread # #{thread_num} finished working"
    end
    i += 1
  end

  threads.each(&:join)
  puts "fn ending"
end

multi_thread(10)
