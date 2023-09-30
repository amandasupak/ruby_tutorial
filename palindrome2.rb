# to run, open IRB and type
# >load './palindrome2.rb'

# This Palindrome2.rb is different from the Palindrome1.rb because
# we are going to modify the String class directly
class String

    # Boolean test to see if a string is blank
    def blank?
        #\S is any non-whitespace character
        !self.match(/\S/)
    end

    # Returns true for palindrome, false if otherwise
    def palindrome?
    processed_content == processed_content.reverse
    end

# make the rest of the code private so that you can't 
# call "racecar".processed_content    
private 

    # Returns content for palindrome testing
    def processed_content
        self.downcase
    end

#This is how to initialize the variables in irb
# > quote = String.new("Able was I ere I saw Elba")
# > quote.palindrome?
# > "Able was I ere I saw Elba".palindrome?


end

