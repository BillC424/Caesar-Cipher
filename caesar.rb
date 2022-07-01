def caesar_cipher(string, shift)
    alphabet_reversed =["z","y","x","w","v","u","t","s","r","q","p","o","n","m","l","k","j","i","h","g","f","e","d","c","b","a"]
  split_string = string.split(//)
  indexes = []
  split_string.select do |c_letter| 
     alphabet_reversed.each_with_index do |letter, index| 
       if letter == c_letter 
         indexes = indexes.push(alphabet_reversed[index - shift])
       end
     end
   end 
  p indexes
  end
  
  p caesar_cipher("zavpy", 4) 