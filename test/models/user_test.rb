require 'test_helper'

class UserTest < ActiveSupport::TestCase
  def setup
    @user = User.new(name: "example user", email: "user@example.com",
    password: "provapassword1", password_confirmation: "provapassword1")
  end

  test "should be valid" do
    assert @user.valid?
  end

  test "name should be present" do
    @user.name = "     "
    assert_not @user.valid?
  end

#
  test "Unique email" do
    utente = @user.dup
    utente.save
    utenteUguale = @user.dup
    assert_not utenteUguale.valid?
    utente.destroy
  end

  test "empty password" do
    utenteUguale = @user.dup
    utenteUguale.password = ""
    utenteUguale.password_confirmation = ""
    assert_not utenteUguale.valid?
  end

  test "password confirmation error" do
    utenteUguale = @user.dup
    utenteUguale.password = "passwordvalida"
    utenteUguale.password_confirmation = "passworddiversa"
    assert_not utenteUguale.valid?
  end

  test "too short password" do
    utenteUguale = @user.dup
    utenteUguale.password = "aaaa1"
    utenteUguale.password_confirmation = "aaaa1"
    assert_not utenteUguale.valid?
  end

  test "password not containing number" do
    utenteUguale = @user.dup
    utenteUguale.password = "aaaaaa"
    utenteUguale.password_confirmation = "aaaaaa"
    assert_not utenteUguale.valid?
  end

end
