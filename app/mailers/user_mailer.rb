class UserMailer < ApplicationMailer
    default from: 'jirehbattung.dev@gmail.com'

    def welcome_email
        @user = 'jirehbattung.dev@gmail.com'
        @url = 'http://example.com/login'
        mail(to: @user, subject: "Welcome to the Trading App!")
    end
end
