=begin
Write a Program to find the Mean of an Array:
Input: 1, 2, 3, 4, 5
Output: 3
Explanation: Mean = (1+2+3+4+5) / 5 = 15/5 = 3

=end



def meanOfArray(arr)
    # base case
    if arr.length == 0
        return 0
    end
    return arr[0] + meanOfArray(arr[1..arr.length])
end

puts "Enter the size of array"
n = gets.chomp.to_i
arr=[]
index=0
puts "Enter #{n} elements of the array"
n.times do 
    arr[index]=gets.chomp.to_i
    index+=1
end

print "Mean for the #{arr} will be #{meanOfArray(arr)/2}"

