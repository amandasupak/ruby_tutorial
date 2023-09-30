# Exercise 6.3.5

# Question 1
# Using reduce, write a function that returns the product of all the 
# elements in an array. Start with a version analogous to using 
# total += n. (Hint: Where += adds, *= multiplies.) Then eliminate the 
# assignment and return the product directly (just as the assignment 
# was eliminated in Listing 6.7 and replaced with total + n).

numbers = 1..5
def multiply(numbers)
    numbers.reduce(1) do |total, n|
        total *= n
        total
    end
end
puts multiply(numbers)


def multiply2(numbers)
    numbers.reduce(1) { |total, n| total * n}
end
puts multiply2(numbers)

# Question 2
# Remove the newlines in the reduce solution from Listing 6.9 to 
# turn it into a single long line. Does it still give the right answer? 
# How long is the resulting line of code?





