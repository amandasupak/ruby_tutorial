require 'sinatra'
require 'asupak_palindrome'

get '/' do
    @title = 'Home'
    erb :index
end

get '/about' do
    @title = 'About'
    erb :about
end

get '/palindrome' do
    @title = 'Palindrome Detector'
    erb :palindrome
end

post '/check' do
    # :phrase is the data submited in the textbox on the palindrome.erb
    # page. It comes from: textarea name="phrase"
    @phrase = params[:phrase]
    erb :results
end
