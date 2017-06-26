class NoticeMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notice_mailer.sendmail_constact.subject
  #
 def sendmail_blog(blog)
    @blog = blog

    mail to: "tmk1125jp@gmail.com",
    subject:'【Achieve】ブログが投稿されました'
 end
  
 def sendmail_contact(contact)
    @contact = contact

    mail to: @contact.email,
    subject:'[Achieve]お問い合わせ完了しました'
 end
  
end
