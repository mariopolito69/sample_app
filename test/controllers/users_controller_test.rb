require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get signup_path
    assert_response :success
  end

  test "should get show" do
    utente = User.first
    get user_path(utente)
    assert_response :success
  end

end
