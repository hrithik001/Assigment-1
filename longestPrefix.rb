=begin
Write a Program to find the longest common prefix in a given set of strings (Take a maximum of 5 strings as Input)
Input:
“apple”, “ape”, “april”
Output: “ap”



=end


def getLongestPrefix(arr)
    # obtain the longest string ( in terms of length )
   longestString = arr.max_by(&:length)
   # obtain the smallest string ( in terms of length)
   shortestString = arr.min_by(&:length)
   index=0
   ans=""
#    checking each index from 0th position and stroing at ans variable
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

