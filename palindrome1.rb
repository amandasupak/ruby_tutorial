# to run, open IRB and type
# >load './palindrome1.rb'

# Defines a Phrase class (inheriting from String).
class Phrase < String 

    def processor(string)
        string.downcase #processor = self.downcase is assumed
    end

    def processed_content
        processor(self)
    end

# Returns true for palindrome, false if otherwise
    def palindrome?
        processed_content == processed_content.reverse
    end

    def louder
        stringloud = upcase
        # Uncomment to use this one if you want to be able to stack methods like:
        # > phrase.louder.palindrome?
        # Phrase.new(self.upcase)
    end
end

#This is how to initialize the variables in irb
# > phrase = Phrase.new("Racecar")
# > phrase.palindrome?

# Defines a translated Phrase which inherits from Phrase
class TranslatedPhrase < Phrase
    attr_accessor :translation

    def initialize(content, translation)
        super(content)
        @translation = translation
    end

    def processed_content
        processor(translation)
    end
end

#This is how to initialize the variables in irb
# > phrase = TranslatedPhrase.new("recognize", "reconocer")
# > phrase.palindrome?
