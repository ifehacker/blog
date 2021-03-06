class AuthorSessionsController < ApplicationController
    def new
    end

    def create
        if login(params[:email], params[:password])
            redirect_back_or_to(articles_path, notice: "successfully logged in")
        else
            flash.now.alert = "Login failed"
            render action: :new
        end
    end

    def destroy
        logout
        redirect_to(:authors, notice: "logged out")
    end
    
end
