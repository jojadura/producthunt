class UserMailer < ActionMailer::Base
	
  def daily_products(user, products)
    @user = user
    @products = products
    mail(to: @user.email, subject: "Los productos top de ayer")
  end
  
end
