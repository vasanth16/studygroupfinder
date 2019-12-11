class UserMailer < ApplicationMailer
    def welcome_email
        @user = params[:user]
        @name = params[:name]
        @url  = 'https://study-group-finder-tulane.herokuapp.com/'
        mail(to: @user.email, subject: 'You have successfully joined '+@name+'!')
    end
end
