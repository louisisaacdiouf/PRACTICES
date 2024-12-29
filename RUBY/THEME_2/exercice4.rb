def search_in_files(dir, pat)
  files = Dir[dir+"/*"]
  matches = []
  for file in files
    File.open(file, "r") do |data|
      lines = data.readlines
      for i in 1..lines.count
        if lines[i-1].scan(pat).count > 0
          matches.append("#{file}: line #{i}")
        end
      end
    end
  end
  return matches
end

puts "Recherche dans des fichiers"
puts "---------------------------"
puts "Entrez le nom du répertoire à parcourir"
dir = gets.chomp()
puts "Entrez le terme à rechercher"
pat = gets.chomp()

puts "---------------------------"
puts "Voici les résultats :"
puts search_in_files(dir, pat)