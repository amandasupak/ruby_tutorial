require 'sinatra'
 get '/' do
#    DAYNAMES = ["Sunday", "Monday", "Tuesday", "Wednesday", 
#    "Thursday", "Friday", "Saturday" ]
#    dayname = DAYNAMES[Time.now.wday]
    dayname = Date::DAYNAMES[Time.now.wday]
    "Hello! Today is #{dayname}!"
 end