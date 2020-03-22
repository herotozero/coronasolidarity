require 'test_helper'

class MatchsMailerTest < ActionMailer::TestCase
  test "moderate_match" do
    mail = MatchsMailer.moderate_match
    assert_equal "Moderate match", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
