require 'test_helper'

class FunctionsControllerTest < ActionController::TestCase
  setup do
    @technique = functions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:techniques)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create function" do
    assert_difference('Function.count') do
      post :create, function: {name: @technique.name, note: @function.note, secondcategory_id: @technique.secondcategory_id }
    end

    assert_redirected_to technique_path(assigns(:technique))
  end

  test "should show function" do
    get :show, id: @function
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @function
    assert_response :success
  end

  test "should update function" do
    patch :update, id: @technique, function: {name: @technique.name, note: @function.note, secondcategory_id: @function.secondcategory_id }
    assert_redirected_to technique_path(assigns(:function))
  end

  test "should destroy function" do
    assert_difference('Function.count', -1) do
      delete :destroy, id: @function
    end

    assert_redirected_to techniques_path
  end
end
