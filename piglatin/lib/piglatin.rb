module PigLatin
  def transform_word word
    word.match /([^aeiou]*)(\w*)/i
    first = $1.empty? ? 'w' : $1
    "#{$2}#{first}ay"
  end
  
  module_function :transform_word
end
