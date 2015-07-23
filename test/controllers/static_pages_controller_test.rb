require 'test_helper'

class StaticPagesControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
    assert_select "title", "Home" + append_title
  end

  test "should get about" do
    get :about
    assert_response :success
    assert_select "title", "About" + append_title
  end

  test "should get help" do
    get :help
    assert_response :success
    assert_select "title", "Help" + append_title
  end

  private
  def append_title
    return " | Ruby on Rails Sample App"
  end

end
