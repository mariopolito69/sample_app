require 'test_helper'

class UserTest < ActiveSupport::TestCase
  def setup
    @user = User.new(name: "example user", email: "user@example.com")
  end

  test "should be valid" do
    assert @user.valid?
  end

  test "name should be present" do
    @user.name = "     "
    assert_not @user.valid?
  end

  test "Unique email" do
    @user.save
    utenteUguale = @user.dup
    assert_not utenteUguale.valid?
    @user.destroy
  end


end
