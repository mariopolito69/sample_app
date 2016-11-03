require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get root_path
    assert_response :success
    assert_select "title", "Home | tette"
  end

  test "should get help" do
    get help_url
    assert_select "title", "help | tette"
    assert_response :success
  end

  test "should get about" do
    get about_url
    assert_select "title","About | tette"
    assert_response :success
  end

  test "should get contact" do
    get contact_url
    assert_select "title","Contact | tette"
    assert_response :success
  end


end
