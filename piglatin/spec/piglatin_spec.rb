require 'piglatin'

describe "Pig Latin" do
  describe "#transform_word" do
    it "should move consonants before the first vowel to the back and add 'ay'" do
      PigLatin.transform_word("pony").should == "onypay"
      PigLatin.transform_word("bridle").should == "idlebray"
    end
    
    it "should add 'way' to the end of words that start with a vowel" do
      PigLatin.transform_word("apples").should == "applesway"
      PigLatin.transform_word("equine").should == "equineway"
      PigLatin.transform_word("icing").should == "icingway"
      PigLatin.transform_word("owl").should == "owlway"
      PigLatin.transform_word("uncommon").should == "uncommonway"
    end
    
    it "should honor capitalized words" do
      PigLatin.transform_word("Applejack").should == "Applejackway"
      PigLatin.transform_word("Rainbow").should == "Ainbowray"
    end
  end
end