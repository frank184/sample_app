require 'test_helper'

class StaticPagesControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
    assert_select "title", base_title
  end

  test "should get about" do
    get :about
    assert_response :success
    assert_select "title", "About" + append_base_title
  end

  test "should get contact" do
    get :contact
    assert_response :success
    assert_select "title", "Contact" + append_base_title
  end

  test "should get help" do
    get :help
    assert_response :success
    assert_select "title", "Help" + append_base_title
  end

  private
  
  def base_title
    return "Ruby on Rails Sample App"
  end

  def append_base_title
    return " | " + base_title
  end

end
