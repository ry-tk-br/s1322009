require 'test_helper'

class SettingControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get set" do
    get :set
    assert_response :success
  end

end
