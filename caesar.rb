def caesar_cipher(string, shift)
  
    alphabet_reversed =["z","y","x","w","v","u","t","s","r","q","p","o","n","m","l","k","j","i","h","g","f","e","d","c","b","a"]
    capital_reversed = ["Z", "Y", "X", "W", "V", "U", "T", "S", "R", "Q", "P", "O", "N", "M", "L", "K", "J", "I", "H", "G", "F", "E", "D", "C", "B", "A"]
  
  string_letters = string.chars
  indexes = []
  string_letters.select do |c| 
    if c == " " || c == "!" || c == "," || c == "?" || c == "." || c == ";" || c == ":"
      indexes = indexes.push(c)
    end  
    if c == c.upcase 
       capital_reversed.each_with_index do |letter, index| 
       if letter == c
         indexes = indexes.push(capital_reversed[index - shift])
           end
         end
    end
     alphabet_reversed.each_with_index do |letter, index| 
       if letter == c 
         indexes = indexes.push(alphabet_reversed[index - shift])
       end
     end
   end 
  
  indexes.join
  end
  
  p caesar_cipher("What a String!", 4) 