
=begin

Write a Program to find the length of the longest sub-array in an array with a sum equal to 0. Error should be thrown if the same is not possible. Please take Max Array Length to be 25
Input: 15, -2, 2, -8, 1, 7, 10, 23
Output: 5
Explanation: The longest sub-array with elements summing up-to 0 is [-2, 2, -8, 1, 7]
=end

def getLongestSubarrayLength(arr)
   max_size = 0
   prefix_sum = 0;
   hashmap={}
  

    hashmap[0] = -1;
    index = 0
    while index < arr.length do
    
        prefix_sum += arr[index];
        if !hashmap.has_key?(prefix_sum)
            hashmap.store(prefix_sum,index)
        end                   
        curr_size = index - hashmap[prefix_sum]; 
        max_size = max_size > curr_size ? max_size : curr_size
        
        index+=1
    end

    return max_size

end

puts "Enter the size of array"
n = gets.chomp.to_i
puts "Enter #{n} elements for array"
index=0
arr=[]
n.times do 
    arr[index]=gets.chomp.to_i
    index+=1
end

puts "The Longest sum possible is #{getLongestSubarrayLength(arr)}"