states = ["Kansas", "Nebraska", "North Dakota", "South Dakota"]

# Returns a URL-friendly version of a string. 
# Example: "North Dakota" -> "north-dakota"
def urlify(string)
    string.downcase.split.join('-')
end

# urls: Imperative version
def imperative_urls(states)
    urls = []
    states.each do |state|
        urls << urlify(state)
    end
    urls.map {|urls| "https://example.com/#{urls}"}
    
end
p imperative_urls(states)

puts "-------"

# urls: functional version
def functional_urls(states)
    urls = []
    urls << states.map {|state| "https://example.com/" + urlify(state)}  
end
p functional_urls(states)

puts "-------"

# singles: Functional version
def functional_singles(states)
    states.select { |state| state.split.length == 1}
end
puts functional_singles(states).inspect

puts "-------"

# Find Dakota #1
def  dakota1(states)
    states.select { |state| state.split.length == 2}
end
puts dakota1(states).inspect

# Find Dakota #2
def  dakota2(states)
    states.select { |state| state.include? "Dakota"}
end
puts dakota2(states).inspect

puts "-------"

numbers = 1..10

# sum: Imperative solution
def imperative_sum(numbers)
    total = 0
    numbers.each do |n|
        total += n
    end
    total
end
p imperative_sum(numbers)

# sum: Functional solution
def functional_sum(numbers)
    numbers.reduce { |total, n| total + n }
end
p functional_sum(numbers)

puts "-------"

# lengths: Imperative version
def imperative_length(states)
    lengths = {}
    states.each do |state|
        lengths[state] = state.length
    # as you loop you are adding states and lengths to the lengths hash.
    # Because lengths hash is updated on each loop you don't need to
    # explicitly return it inside the loop. But the return value of this 
    # each block is only the original array states, not the hash length
    end
    # The each loop only explicitly returns the original array states,
    # if you want it to return the lengths hash you have to do it after
    # the each loop is over
    lengths
end
p imperative_length(states)

# lengths: functional version
def functional_length(states)
    states.reduce({}) do |lengths, state|
        lengths[state] = state.length
        lengths
    # within the block you are updating lengths as you go, therefore
    # lengths must be explicitly returned in the loop in order to keep
    # accumulating or the block will break. 
    # The final result of reduce is an accumulated hash, which is 
    # automatically returned and the end of the block
    end
    # Therefore you do not need to return lengths after the end
end
p functional_length(states)

# lengths: functional version
def functional_length_shorter(states)
    states.reduce({}) {|lengths, state| lengths.merge( 
                {state => state.length} ) }
end
p functional_length_shorter(states)
