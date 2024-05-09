
=begin

Write a Program to check and return if an expression is valid or not. We should check for the following:
The expression should not contain anything other than numbers and mathematical symbols (No alphabets)
Allowed Operations: + (Add), - (Subtract), * (Multiply), / (Divide), % (Mod), ^ (Exponent)
Check if all brackets have been closed
Case #1: Valid Expression
Input: (5+4)*[(4/5)-{9-6+(10^2)}]
Output: Valid
Case #2: Invalid Expression
Input: (5+4*[(4/5)-{9-6+(10^2}
Output: Invalid
Explanation: Brackets have not been closed properly



=end

def CheckIfValidExpresssion(expression)
#    return if expression contians any alphabet character
    expression.each_char do |char|
       if char.match(/[A-Za-z]/)
         return "Invalid Expression"
       end
    end
    stack = []

       

    expression.each_char do |char|
        case char
            when '(', '{' , '['
                stack.push(char)
            when ')', '}' , ']'
                # checking closing bracket if avilable othewise invalid
                if stack.empty? || (char == ')' && stack.pop != '(') || (char == '}' && stack.pop != '{') || (char == ']' && stack.pop != '[')
                    return "Invalid Expression"
                end
        end
    end

 
  return "Invalid Expression" unless stack.empty?

 
  return "Valid Expression"


end


puts "Enter the Expression"
expression = gets.chomp
puts CheckIfValidExpresssion(expression)
