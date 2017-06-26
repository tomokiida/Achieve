require 'test_helper'

class NoticeMailerTest < ActionMailer::TestCase
  test "sendmail_constact" do
    mail = NoticeMailer.sendmail_constact
    assert_equal "Sendmail constact", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
