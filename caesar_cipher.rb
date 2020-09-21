def caesar_cipher(string ,shift)
  alphabet = ("a".."z").to_a
  string = string.split("")
  
  string.map! do |char|
    if char != char.swapcase
      index = alphabet.index(char.downcase)
    
      if char.downcase == char
        char = alphabet[(index + shift) % 26]
      else
        char = alphabet[(index + shift) % 26].upcase
      end
    else
      char
    end
  end

  string = string.join("")
  puts string
end

caesar_cipher("What a string!", 5)