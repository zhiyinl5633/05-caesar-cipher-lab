def caesar_encode(string,offset)
  down_alpha = [*('a'..'z')]
  up_alpha = [*('A'..'Z')]
  string.split(//).map do |character|#split into each character
      if down_alpha.include?(character)
        character = down_alpha[(down_alpha.index(character) + offset)%26]
      elsif up_alpha.include?(character)
        character = up_alpha[(up_alpha.index(character) + offset)%26]
      else 
        character 
      end
  end.join
end

def caesar_decode(string,offset)
    caesar_encode(string,offset*-1)
end

