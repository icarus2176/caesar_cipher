def caesar_cipher(text, shift_factor)
  letters_lower = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m","n", "o", "p", "q", "r", "s", "t", "u", "v","w", "x", "y", "z"]
  letters_upper = ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"]

  text_array = text.split("")

  shifted_array = text_array.map do |letter|
    if letters_lower.include?(letter.downcase)
      shifted = letters_lower.index(letter.downcase) + shift_factor
      if shifted > 25
        shifted -= 26
      end
      if letter == letter.upcase
        letter = letters_upper[shifted]
      else
        letter = letters_lower[shifted]
      end
    else
      letter
    end
  end
  shifted_array.join
end


puts caesar_cipher("What a string!", 5)