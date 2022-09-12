class UserMailer < ApplicationMailer
    default from: 'jirehbattung.dev@gmail.com'

    def welcome_email
        @user = params[:user]
        @url = 'http://localhost:3000/users/sign_in'
        mail(to: @user, subject: "Welcome to the Trading App!")
    end
end
