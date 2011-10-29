module PigLatin
  def transform_word word
    word.match /([^aeiou#{word.match(/[aeiou]/i) ? '' : 'y'}]*)(['a-z]*)/i
    first = $1.empty? ? 'w' : $1
    pig = "#{$2}#{first}ay"
    word.chr.match(/[A-Z]/) ? pig.capitalize : pig.downcase
  end
  
  def transform string
    string.split(' ').map do |s|
      s.gsub(/['a-z]+/i) { |m| transform_word(m) }
     end.inject do |m, s|
       m += " #{s}"
     end
  end
  
  module_function :transform_word, :transform
end
