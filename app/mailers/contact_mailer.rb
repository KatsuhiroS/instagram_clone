class ContactMailer < ApplicationMailer
  def contact_mail(picture)
   @picture = picture
   # @current_user ||= User.find_by(id: session[:user_id])
   mail to: @picture.user.email, subject: "投稿完了"
  end
end
