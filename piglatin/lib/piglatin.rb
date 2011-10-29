module PigLatin
  def transform_word word
    is_cap = word.chr.match /[A-Z]/
    word.match /([^aeiou]*)(\w*)/i
    first = $1.empty? ? 'w' : $1.downcase
    second = is_cap ? $2.capitalize : $2
    "#{second}#{first}ay"
  end
  
  module_function :transform_word
end
