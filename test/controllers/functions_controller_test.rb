require 'test_helper'

class FunctionsControllerTest < ActionController::TestCase
  setup do
<<<<<<< HEAD
    @technique = functions(:one)
=======
    @function = functions(:one)
>>>>>>> origin/master
  end

  test "should get index" do
    get :index
    assert_response :success
<<<<<<< HEAD
    assert_not_nil assigns(:techniques)
=======
    assert_not_nil assigns(:functions)
>>>>>>> origin/master
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create function" do
    assert_difference('Function.count') do
<<<<<<< HEAD
      post :create, function: {name: @technique.name, note: @function.note, secondcategory_id: @technique.secondcategory_id }
    end

    assert_redirected_to technique_path(assigns(:technique))
=======
      post :create, function: { name: @function.name, note: @function.note, secondcategory_id: @function.secondcategory_id }
    end

    assert_redirected_to function_path(assigns(:function))
>>>>>>> origin/master
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
<<<<<<< HEAD
    patch :update, id: @technique, function: {name: @technique.name, note: @function.note, secondcategory_id: @function.secondcategory_id }
    assert_redirected_to technique_path(assigns(:function))
=======
    patch :update, id: @function, function: { name: @function.name, note: @function.note, secondcategory_id: @function.secondcategory_id }
    assert_redirected_to function_path(assigns(:function))
>>>>>>> origin/master
  end

  test "should destroy function" do
    assert_difference('Function.count', -1) do
      delete :destroy, id: @function
    end

<<<<<<< HEAD
    assert_redirected_to techniques_path
=======
    assert_redirected_to functions_path
>>>>>>> origin/master
  end
end
