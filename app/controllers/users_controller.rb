class UsersController < ApplicationController
    def index
        @users = User.all
    end
    
    def show
        #id = params[:id]
        @user = User.find params[:id]
    end
    
    def new 
        @user = User.new 
        # default: render 'new' template 
    end  

    def create
        params.require(:user)
        permitted = params[:user].permit(:email,:first_name,:last_name)
        @user = User.create!(permitted)
        flash[:notice] = "#{@user.email} was successfully created." 
        redirect_to users_path 
    end
end
