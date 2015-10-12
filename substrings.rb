dictionary = ["below", "down", "go", "going", "horn", "how", "howdy", "it", "i", "low", "own", "part", "partner", "sit"]

def substrings (text, dictionary)
  result = {}
  count = 0
  text_arr = text.downcase.split(' ')
  dictionary.each do |word|
    text_arr.each do |i|
      count += 1 if i.include?(word)
    end
    result[word] = count if count > 0
    count = 0
  end
  return result
end

puts substrings("Howdy partner, sit down! How's it going?", dictionary)