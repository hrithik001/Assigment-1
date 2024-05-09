=begin
Write a Program to find the Nth Fibonacci Number in the Series
Input: 5
Output: 3
Explanation: Fibonacci Series: 0, 1, 1, 2, 3, 5 (3 is the 5th number)

=end



def nthFibonacci(num)
    # base case
    if num <= 1
        return num
    end
    return nthFibonacci(num-1)+nthFibonacci(num-2)
end

puts "Enter the value "
num = gets.chomp.to_i
puts "The nth Fibonacci for #{num} is #{nthFibonacci(num-1)}"
