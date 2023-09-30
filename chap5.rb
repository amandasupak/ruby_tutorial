# Chapter 5.3.1 question 1
# Using method chaining, write a function email_parts (Listing 5.12)
# to return an array of the username and domain for a standard email 
# address of the form username@example.com. Note: Make sure your function 
# returns the same result for USERNAME@EXAMPLE.COM.
def email_parts(email)
    email_parts = email.split("@")
    puts "Your username is #{email_parts[0]} and your domain is #{email_parts[1]}"
    reconstructed_email = [email_parts[0], "@", email_parts[1]].join
    puts "Your email is #{reconstructed_email}"  
end

# Exercise as part of chpat 5.15 as an example of yield in a block
def sandwich 
    puts "top bread"
    yield
    puts "bottom bread"
    puts "------------"
end

sandwich do
    puts "baccon, lettuce, and tomato"
end

# Exercise as part of chapt 5.17 as an example passing block variables
def tag(tagname, text)
    html = "<#{tagname}> #{text} </#{tagname}>"
    yield html
    puts "------------"
end

tag("p", "here is my new paragraph") do |markup|
    puts markup
end

# Chapt 5.4.2 exercise 1
# Use the downto method to print out the strings "99 bottles of beer 
# on the wall" down to "1 bottle of beer on the wall". (Take care to 
# get the n = 1 case right, so that "bottle" is singular.)
# In this version I will just start at 10 and go to 0
def beer1(number)
    number.downto(0) do |i|
        case i
        when 1
            puts "1 bottle of beer on the wall"
        when 0
            puts "0 bottles of beer on the wall"
        else
            puts "#{i} bottles of beer on the wall"
        end
    end
end


def beer2(number)
    number.downto(0) do |i|
        bottle_form = i == 1 ? "bottle" : "bottles"
        puts "#{i} #{bottle_form} of beer on the wall"
    end
end






