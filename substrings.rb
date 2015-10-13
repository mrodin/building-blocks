# Implement a method #substrings that takes a word as the first argument and then an array of valid substrings
# (your dictionary) as the second argument. It should return a hash listing each substring (case insensitive)
# that was found in the original string and how many times it was found.

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