puts "Enter the 3 first letters of the day"
day = gets.chomp().downcase

output =
case day
when "mon"
  "Monday"
when "tue"
  "Tuesday"
when "wed"
  "Wednesday"
when "thu"
  "Thursday"
when "fri"
  "Friday"
when "sat"
  "Saturday"
when "sun"
  "Sunday"
else
  "Not valid day"
end

puts output