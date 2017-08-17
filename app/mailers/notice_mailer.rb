class NoticeMailer < ApplicationMailer
  default from: "user@gmail.com"
  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notice_mailer.sendmail_confirm.subject
  #
  def sendmail_confirm(user)
    @greeting = "Hi"
    @user = user
    mail to: "user@sample.com", subject: "ご購入ありがとうございます"
  end
end
