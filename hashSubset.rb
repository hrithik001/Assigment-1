=begin
Write a Program to take two hashses as input and check for the following:
Keys in Hash #1 is a subset of Keys in Hash #2
Values in Hash #1 is a subset of Values in Hash #2
Case #1: Positive Scenario
Input:
Hash #1: { a: 1, b: 2, c: 3 }
Hash #2: { a: 1 }
Output:
Keys of Hash #2 are a subset of Keys of Hash #1
Values of Hash #2 are a subset of Values of Hash #1
Case #2: Negative Scenario
Input:
Hash #1: { a: 1, b: 2, c: 3 }
Hash #2: { d: 1 }
Output:
Keys of Hash #2 are NOT a subset of Keys of Hash #1
Values of Hash #2 are NOT a subset of Values of Hash #1
Case #3: Negative Scenario
Input:
Hash #1: { a: 1, b: 2, c: 3 }
Hash #2: { a: 5, b: 6 }
Output:
Keys of Hash #2 are a subset of Keys of Hash #1
Values of Hash #2 are NOT a subset of Values of Hash #1

=end


def getKeySubSet(hash1,hash2)
    # searching keys of hash2 in hash1
    hash2.each_key do | key |
        if !hash1.has_key?(key)
            return "Keys of Hash #2 are NOT a subset of Keys of Hash #1"
        end
    end
    # If we found all the keys in hash1 
    return "Keys of Hash #2 are a subset of Keys of Hash #1"
end

def getValueSubSet(hash1,hash2)
    # Searching values of hash2 in hash1
    hash2.each do |key,value|
       
        if (hash1.has_key?(key) && !hash1.has_value?(value))
            return "Values of Hash #2 are NOT a subset of Values of Hash #1"
        end
    end
    # If we found all the values along with the respective keys 
    return "Values of Hash #2 are a subset of Values of Hash #1"
end 

# taking input for two hashes
hash1={}
hash2={}
puts "Enter the data for hashmap 1"
puts "----------------------------------------------------------"
yes=true
while yes do
   puts "Enter key"
   key = gets.chomp
   puts "Enter Value"
   value = gets.chomp
   hash1.store(key,value)
#  this allow user to add as many as they want by hitting enter
   puts "Enter to add more data for hash 1 Y/n"
   check = gets.chomp
#    if user entered 'n' then it will stop taking input 
   if(check == "n")
        yes=false
   end
end
puts "----------------------------------------------------------"
yes=true

puts "Enter the data for hashmap 2"
puts "-----------------------------------------------------------"
yes=true
while yes do
   puts "Enter key"
   key = gets.chomp
   puts "Enter Value"
   value = gets.chomp
   hash2.store(key,value)
   #  this allow user to add as many as they want by hitting enter
   puts "Enter to add more data for hash 2 y/n"
   check = gets.chomp
   #    if user entered 'n' then it will stop taking input 
   if(check == "n")
        yes=false
   end
end
puts "-----------------------------------------------------------"
puts hash1.inspect
puts hash2.inspect

puts getKeySubSet(hash1,hash2) 
puts getValueSubSet(hash1,hash2)