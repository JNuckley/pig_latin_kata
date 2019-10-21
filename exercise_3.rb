# Develop your work so far to treat 'qu' as a special case, so that those words
# end in 'quay'
# e.g. quick -> ickquay
#      quilt -> iltquay
#      qat   -> atqay

def pig_latin(word)

if word.start_with?("a", "e", "i","o", "u")
return word + "way"
elsif word.start_with?("qu")
word = word[2..-1]
return word + "qu" + "ay"

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
assert_equal(pig_latin('quick'), 'ickquay')
assert_equal(pig_latin('quilt'), 'iltquay')
assert_equal(pig_latin('qat'), 'atqay')
