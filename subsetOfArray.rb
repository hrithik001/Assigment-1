=begin

Write a Program to take two arrays as input and check if one is a subset of the other
Case #1: Positive Scenario
Input:
Array #1: 1, 2, 3, 4
Array #2: 1, 2
Output: Array #2 is a subset of Array #1
Case #2: Negative Scenario
Input:
Array #1: 1, 2, 3, 4
Array #2: 8, 6, 6
Output: Array #2 is not subset of Array #1
=end

def getSubSet(arr1,arr2)
    if !((arr1-arr2).empty?() && (arr2-arr1).empty?())
        return "Array #2 is not a subset of Array #1"
    end
    return "Array #2 is a subset of Array #1"
end

puts "Enter the size for the first array"
arr1_size=gets.chomp.to_i
puts "Enter elements of the first array:"
arr1=[]
arr1_size.times do 
    num = gets.chomp.to_i
    arr1 << num
end
puts "Enter the size for the second array"
arr2_size=gets.chomp.to_i
puts "Enter elements of the second array:"
arr2=[]
arr2_size.times do 
    num = gets.chomp.to_i
    arr2 << num
end
 
puts getSubSet(arr1,arr2)