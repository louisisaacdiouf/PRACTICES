def lire_fichier(path)
  file = File.open(path, "r")
  
  file.each_line do |line|
    puts line
  end 

  file.close
end

lire_fichier(ARGV[0])