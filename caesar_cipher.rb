# Implement a caesar cipher that takes in a string and the shift factor and then outputs the modified string:
# > caesar_cipher("What a string!", 5)
# => "Bmfy f xywnsl!"

def caesar_cipher (input, shift)
  alphabet = [*'a'..'z', *'A'..'Z']
  split_arr = input.split('')
  result = []

  split_arr.each do |c|
    if (alphabet.include?(c))
      i = alphabet.index(c) + (shift % 26)
      if (i > alphabet.length && /[[:upper:]]/.match(c))
        result << alphabet[i - 26]
      elsif (i > alphabet.length)
        result << alphabet[i - 52]
      else
        result << alphabet[i]
      end
    else
      result << c
    end
  end

  return result.join('')
end

puts caesar_cipher('What a string!', 5)