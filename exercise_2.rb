# Develop your proram to handle multiple consonants at the start of words.
#
# The rule is:
# If the word starts with one or more consonants, move them to the end.
# e.g. cram     -> amcray
#      sprinkle -> inklespray
#
# Still assume the words are lowercase.

def pig_latin(word)
if word.start_with?("a", "e", "i","o", "u")
return word + "way"
else
  first_letters = []
  letter = word.split("")

  letter.each do |x|

    if x.start_with?("a", "e", "i","o", "u")
    return word  + first_letters.join + "ay"
    break
    else
      first_letters << x
      word = word[1..-1]

end
end
end
end

## Tests:

require_relative './helpers/assert_equal'
assert_equal(pig_latin('cram'), 'amcray')
assert_equal(pig_latin('sprinkle'), 'inklespray')
assert_equal(pig_latin('dog'), 'ogday')
assert_equal(pig_latin('up'), 'upway')
