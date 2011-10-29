require 'piglatin'

describe "Pig Latin" do
  describe "#transform_word" do
    it "should move consonants before the first vowel to the back and add 'ay'" do
      PigLatin.transform_word("pony").should == "onypay"
      PigLatin.transform_word("fluttershy").should == "unttershyflay"
    end
    
    it "should add 'way' to the end of words that start with a vowel" do
      PigLatin.transform_word("unicorn").should == "unicornway"
      PigLatin.transform_word("applejack").should == "applejackway"
    end
  end
end