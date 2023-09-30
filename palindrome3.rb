# to run, open IRB and type
# >load './palindrome3.rb'

# This Palindrome3.rb is different from the Palindrome2.rb because
# we are using a module now so that palendrome can be used on both
# the string and integer classes.

module Palindrome


    # Returns true for palindrome, false if otherwise
    def palindrome?
    processed_content == processed_content.reverse
    end

private 

    # Returns content for palindrome testing
    def processed_content
        self.downcase
    end
end

class String
    include Palindrome
end

class Integer
    include Palindrome
end

#This is how to initialize the variables in irb
# > quote = String.new("Able was I ere I saw Elba")
# > quote.palindrome?
# > "Able was I ere I saw Elba".palindrome?
# you can also try with integers like "12321"
