=begin
Write a Program to find the Factorial of a given number
Input: 5
Output: 120
Explanation: 5! = 5*4*3*2*1 =120

=end

def factorial(num)
    if num==0
        return 1
    end
    return num*factorial(num-1)
end

puts "Enter a number for Factorial"
num=gets.chomp.to_i
puts "The factorial for #{num} is #{factorial(num)}"
