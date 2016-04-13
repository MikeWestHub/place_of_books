require 'test_helper'

class UsersControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert assigns(:users)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should get show" do
    @bob = users(:bob)
    get :show, id: @bob.id
    assert_response :success
  end

  test "should get edit" do
    @bob = users(:bob)
    get :edit, id: @bob.id
    assert_response :success
  end

  test "should get delete" do
    @bob = users(:bob)
    user_count = User.count
    delete :destroy, id: @bob.id
    assert_redirected_to controller: "users", action: "index"
    assert_equal user_count - 1, User.count
  end

  test "should get update" do
    @bob = users(:bob)
    patch :update, id: @bob.id, user: { name: "Frank" }
    assert_redirected_to controller: "users", action: "show", id: @bob.id
    assert_equal "Frank", assigns[:user].name
  end

  test "should get create" do
    user_count = User.count
    post :create, user: { name: "Reginald" }
    assert assigns(:user).valid?
    assert_equal "Reginald", assigns(:user).name
    assert_equal user_count + 1, User.count
  end

end
