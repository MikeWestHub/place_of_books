require 'test_helper'

class ReservationsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert assigns(:reservations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should get show" do
    @rezy = reservations(:rezy)
    get :show, id: @rezy.id
    assert_response :success
  end

  test "should get edit" do
    @rezy = reservations(:rezy)
    get :edit, id: @rezy.id
    assert_response :success
  end

  test "should get delete" do
    @rezy = reservations(:rezy)
    reservation_count = Reservation.count
    delete :destroy, id: @rezy.id
    assert_redirected_to controller: "reservations", action: "index"
    assert_equal reservation_count - 1, Reservation.count
  end

  test "should get update" do
    @rezy = reservations(:rezy)
    patch :update, id: @rezy.id, reservation: { book_id: 4 }
    assert_redirected_to controller: "reservations", action: "show", id: @rezy.id
    assert_equal 4, assigns[:reservation].book_id
  end

  test "should get create" do
    reservation_count = Reservation.count
    post :create, reservation: { book_id: 2 }
    assert assigns(:reservation).valid?
    assert_equal 2, assigns(:reservation).book_id
    assert_equal reservation_count + 1, Reservation.count
  end

end
