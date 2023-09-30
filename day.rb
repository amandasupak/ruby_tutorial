require 'date'

# Returns the day of the week for the given Time object.
# I used time2 here to show that they are different 
# from the other time variable
def day_of_the_week(time2)
    Date::DAYNAMES[time2.wday]
end

def greeting(time)
    "Hello, today is #{day_of_the_week(time)}
    -- now coming from a file!"
end