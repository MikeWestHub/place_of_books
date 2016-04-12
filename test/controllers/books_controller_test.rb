require 'test_helper'

class BooksControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert assigns(:books)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should get show" do
    @animals = books(:animals)
    get :show, id: @animals.id
    assert_response :success
  end

  test "should get edit" do
    @animals = books(:animals)
    get :edit, id: @animals.id
    assert_response :success
    assert_select "form"
  end

  test "should get update" do
    @animals = books(:animals)
    patch :update, :id @animals.id, book: { name: "Taco" }
    assert_redirected_to controller: "books", action: "show", id: @animals.id
    assert_equal "Taco", assigns[:book].name
  end

  test "should get delete" do
    get :delete
    assert_response :success
  end

  test "should get create" do
    get :create
    assert_response :success
  end

end
