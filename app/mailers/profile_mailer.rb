class ProfileMailer < ApplicationMailer

default from: "amvaleh@gmail.com"
	def new_order_mail(mail)
		email = "amvaleh@gmail.com"
		mail(to: email, subject: "سفارش جدید")
	end
end
