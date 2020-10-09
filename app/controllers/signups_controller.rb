class SignupsController < ApplicationController
    def new
        if signup_params
            # If data submitted already by the form we call the create method
            create
            return
        end
        @signup = Signup.new
        render 'new' # call it explicit
    end

    def create
        @signup = Signup.new(signup_params)
        if @signup.save
            redirect_to :thanks
        else
            render 'new'
        end
    end

    private

    def signup_params
        if params[:signup].nil? || params[:signup].empty?
            return false
        else
            params.require(:signup).permit(:first_name, :email, :commit)
        end
    end
end
