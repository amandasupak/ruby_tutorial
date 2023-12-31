require_relative 'test_helper'
class PalindromeAppTest < Minitest::Test
    include Rack::Test::Methods

    def app
        Sinatra::Application
    end
    
    def setup
        @base_title = "Learn Enough Ruby Sample App"
    end
    
    def test_form_presence
        get '/palindrome'
        assert doc(last_response).at_css('form')
    end

    def test_non_palindrome_submission
        post '/check', phrase: "Not a palindrome"
        assert_includes doc(last_response).at_css('p').content, "is not a palindrome"
        assert doc(last_response).at_css('form')
    end

    def test_palindrome_submission
        post '/check', phrase: "Able was I, ere I saw Elba."
        assert_includes doc(last_response).at_css('p').content, "is a palindrome"
    end

    def test_index
        get '/'
        assert last_response.ok?
        # another test to check to see if there is a first H1 tag
        assert doc(last_response).at_css('h1')
        #test for the title of the page
        title_content = doc(last_response).at_css('title').content 
        assert_equal "#{@base_title} | Home", title_content
        #test for the navigation bar
        assert doc(last_response).at_css('nav')
    end

    def test_about
        get '/about'
        assert last_response.ok?
        assert doc(last_response).at_css('h1')
        title_content = doc(last_response).at_css('title').content 
        assert_equal "#{@base_title} | About", title_content
    end
    

    def test_palindrome
        get '/palindrome'
        assert last_response.ok?
        assert doc(last_response).at_css('h1')
        title_content = doc(last_response).at_css('title').content 
        assert_equal "#{@base_title} | Palindrome Detector", title_content
    end
end