module ApplicationHelper

    def navbar
        if logged_in?
            "hello"
        else
            "sign up please"
        end 

    end 
end
