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
    
    it "should treat 'y' as a vowel when there are no other vowels" do
      PigLatin.transform_word("why").should == "ywhay"
      PigLatin.transform_word("spy").should == "yspay"
    end
    
    it "should honor capitalized words" do
      PigLatin.transform_word("Applejack").should == "Applejackway"
      PigLatin.transform_word("Rainbow").should == "Ainbowray"
    end
  end
  
  describe "#transform" do
    it "should take a series of words and transform them" do
      PigLatin.transform("The purple pony").should == "Ethay urplepay onypay"
    end
    
    it "should honor punctuation" do
      PigLatin.transform("I don't get it.").should == "Iway on'tday etgay itway."
      PigLatin.transform("Well, I never!").should == "Ellway, Iway evernay!"
      PigLatin.transform("Why the long face?").should == "Ywhay ethay onglay acefay?"
      PigLatin.transform("Are you a spy?!").should == "Areway ouyay away yspay?!"
      PigLatin.transform("Awe, horse-apples!").should == "Aweway, orsehay-applesway!"
    end
  end
end