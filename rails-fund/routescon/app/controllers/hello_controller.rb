class HelloController < ApplicationController
    def home
        render text: "Hello CodingDojo!"
    end
    def sayhello
        render text "Saying Hello!"
    end
    def hellojoe
        render text "Saying Hello Joe!"
    end
    def hellomichael
        redirect_to "say/hello/joe"
    end
    def times
        session[:times] += 1
        render text: "You visited this url #{session[:times]} times"
    end
    def restart
        session[:times] = 0
        render text: "Destroyed the session!"
    end
end