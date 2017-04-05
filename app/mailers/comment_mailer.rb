class CommentMailer < ApplicationMailer
  default from: "golograam@gmail.com"
  def new_reply(user,comment,post)
    @user = user
    @comment = comment
    @post = post
    subject = "کامنت روی پست شما: " + @post.title.to_s
    mail(to: user.email, subject: subject)
  end

end
