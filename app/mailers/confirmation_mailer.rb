class ConfirmationMailer < ApplicationMailer
	default from: 'jirehbattung.dev@gmail.com'

	def confirmation_email
		@user = 'jirehgbattung.dev@gmail.com'
		@url = 'http://localhost:3000/users/sign_in'
		mail(to: @user, subject: 'Your Trading Accoung has been approved!')
	end
end
