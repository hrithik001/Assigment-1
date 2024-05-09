=begin
Write a Program to find the longest common prefix in a given set of strings (Take a maximum of 5 strings as Input)
Input:
“apple”, “ape”, “april”
Output: “ap”



=end


def getLongestPrefix(arr)

   longestString = arr.max_by(&:length)
   shortestString = arr.min_by(&:length)
   index=0
   ans=""
   until longestString[index] != shortestString[index]
    ans+=shortestString[index]
    index+=1
   end
   return ans
end

puts "Enter 5 string value"
arr=[]
index=0
5.times do
    arr[index]=gets.chomp
    index+=1
end
print "The longest prefix of the array is #{getLongestPrefix(arr)}"

