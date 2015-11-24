require 'test_helper'

class SignupsControllerTest < ActionController::TestCase
  setup do
    @signup = signups(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:signups)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create signup" do
    assert_difference('Signup.count') do
      post :create, signup: { guest1: @signup.guest1, guest2: @signup.guest2, guest3: @signup.guest3, guest4: @signup.guest4, name: @signup.name, size1: @signup.size1, size2: @signup.size2, size3: @signup.size3, size4: @signup.size4, size: @signup.size }
    end

    assert_redirected_to signup_path(assigns(:signup))
  end

  test "should show signup" do
    get :show, id: @signup
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @signup
    assert_response :success
  end

  test "should update signup" do
    patch :update, id: @signup, signup: { guest1: @signup.guest1, guest2: @signup.guest2, guest3: @signup.guest3, guest4: @signup.guest4, name: @signup.name, size1: @signup.size1, size2: @signup.size2, size3: @signup.size3, size4: @signup.size4, size: @signup.size }
    assert_redirected_to signup_path(assigns(:signup))
  end

  test "should destroy signup" do
    assert_difference('Signup.count', -1) do
      delete :destroy, id: @signup
    end

    assert_redirected_to signups_path
  end
end
