# Check if the letter is alphabetic
def is_alphabetic(a) return ('a'..'z').to_a.include? a.to_s.downcase end

# Check if the letter is uppercase or lowercase
def is_upper(a) return (is_alphabetic(a) and (a.upcase == a)) end
# def is_lower(a) return (is_alphabetic(a) and !is_upper(a)) end

# Get letter position in alphabet
def letter_pos(a) alphabet = ('a'..'z').to_a.index(a.downcase) end

def rot(n, str)
  alphabet = ('a'..'z').to_a
  for i in 0..(str.length() - 1)
    l = str[i]

    if !is_alphabetic(l)
      next
    end

    cap = is_upper(l)
    l = l.downcase

    shift = (letter_pos(l) + n) % 26

    if cap
      str[i] = alphabet[shift].upcase
    else
      str[i] = alphabet[shift]      
    end
  end
  
  puts str
end

def rot13(a) return rot(13, a) end

rot(-1, "A")