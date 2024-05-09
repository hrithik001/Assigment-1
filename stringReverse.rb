
=begin
Write a Program to reverse a string via Recursion and via Loop (there should be two separate functions):
Input: “ABCD”
Output:
Reverse via Recursion: “DCBA”
Reverse via Loops: “DCBA”
Please do not use any inbuilt functions provided by Ruby here

=end


def reverseByRecursion(str,index)
    # base case
   if str.length-1 == index
        return str[index]
   end

   return reverseByRecursion(str,index+1)+str[index]

    
end

def reverseByloop(str)
    reversed_string = ""
    str.each_char do |char|
        reversed_string = char + reversed_string
    end
    return reversed_string
    
end

puts "Enter a string"
str = gets.chomp
puts "#{str} => #{reverseByRecursion(str,0)} by recursion"
puts "#{str} => #{reverseByloop(str)} by using loop"