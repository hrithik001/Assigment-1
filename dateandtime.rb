=begin
Write a Program that takes Date/Time as an input (in DD-MM-YYYY HH:MM format) and displays the same in the following formats:
Input: 08-05-2024 11:26
Output:
Format #1: Wed, 8 May, 2024
Format #2: 05/08/2024
Format #3: 11:26 AM, Wednesday 08 May, 2024
Please use functions provided by Ruby Date,Time and DateTime classes here
=end
require 'date'

def printAllFormat(date_time)
    puts "Format 1 => #{date_time.strftime('%a, %d %b, %Y')}"
    puts "Format 2 => #{date_time.strftime('%d/%m/%Y')}"
    puts "Format 3 => #{date_time.strftime('%l:%M %p, %A %d %B, %Y')}"

    
end


puts "Enter date and time in  DD-MM-YYYY HH:MM format"
date_time = gets.chomp
date_time = DateTime.parse(date_time)
printAllFormat(date_time)
