# Develop your work so far to preserve the existing capitalisation of the word
# e.g. Dog  -> Ogday
#      cram -> amcray
#
# Assume words either start with a capital letter or don't — don't worry about
# other formats

def pig_latin(word)
if word.capitalize == word
  cap = true
else
  cap = false
end
if word.start_with?("a", "e", "i","o", "u")
return word + "way"
elsif word.start_with?("qu")
word = word[2..-1]
if cap == true
  return word.capitalize + "qu" + "ay"
else
return word + "qu" + "ay"
end

else
  first_letters = []
  letter = word.split("")

  letter.each do |x|

    if x.start_with?("a", "e", "i","o", "u")
      if cap == true
    return word.capitalize  + first_letters.join + "ay"
    break
    else
      return word  + first_letters.join + "ay"
      break
    end

    else
      first_letters << x.downcase
      word = word[1..-1]


end
end
end
end

## Tests:

require_relative './helpers/assert_equal'
assert_equal(pig_latin('Dog'), 'Ogday')
assert_equal(pig_latin('cram'), 'amcray')
