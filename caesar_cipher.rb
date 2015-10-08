# Implement a caesar cipher that takes in a string and the shift factor and then outputs the modified string:
#
# > caesar_cipher("What a string!", 5)
# => "Bmfy f xywnsl!"

def caesar_cipher (input, shift)
  lowcase_alph = ('a'..'z')
  upcase_alph = ('A'..'Z')

  split_ary = input.split('')
  ascii_ary = []

  split_ary.each do |c|
    if (lowcase_alph.include?(c))
      if (c.ord + shift > 122)
        ascii_ary << (c.ord - 26) + shift
      else
        ascii_ary << c.ord + shift
      end
    elsif (upcase_alph.include?(c))
      if (c.ord + shift > 90)
        ascii_ary << (c.ord - 26) + shift
      else
        ascii_ary << c.ord + shift
      end
    else
      ascii_ary << c.ord
    end
  end

  output = ascii_ary.map { |x| x.chr }
  puts output.join('')
end

caesar_cipher('What a string!', 5)