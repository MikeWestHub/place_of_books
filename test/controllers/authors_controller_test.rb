require 'test_helper'

class AuthorsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert assigns(:authors)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should get show" do
    @bob = authors(:bob)
    get :show, id: @bob.id
    assert_response :success
  end

  test "should get edit" do
    @bob = authors(:bob)
    get :edit, id: @bob.id
    assert_response :success
  end

  test "should get delete" do
    @bob = authors(:bob)
    author_count = Author.count
    delete :destroy, id: @bob.id
    assert_redirected_to controller: "authors", action: "index"
    assert_equal author_count - 1, Author.count
  end

  test "should get update" do
    @bob = authors(:bob)
    patch :update, id: @bob.id, author: { name: "Frank" }
    assert_redirected_to controller: "authors", action: "show", id: @bob.id
    assert_equal "Frank", assigns[:author].name
  end

  test "should get create" do
    author_count = Author.count
    post :create, author: { name: "James Joyce" }
    assert assigns(:author).valid?
    assert_equal "James Joyce", assigns(:author).name
    assert_equal author_count + 1, Author.count
  end

end
