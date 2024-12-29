require 'date'

File.open("THEME_2/journal.txt", "a") do |file|
  file.write("[#{DateTime.now.strftime("%d-%m-%Y %H:%M:%S")}]: #{ARGV[0]}\n")  
end