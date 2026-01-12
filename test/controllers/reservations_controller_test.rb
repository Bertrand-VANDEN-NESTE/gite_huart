require "test_helper"

class ReservationsControllerTest < ActionDispatch::IntegrationTest

  setup do
    @room = Room.create!(name: "Chambre Test", description: "Pour test", price: 100)
    @reservation = Reservation.create!(
      room: @room,
      guest_name: "Test Guest",
      start_date: Date.today,
      end_date: Date.today + 1
    )
  end

  teardown do
    @reservation.destroy
    @room.destroy
  end

  # INDEX
  test "should get index" do
    get room_reservations_url(@room)
    assert_response :success
    assert_match @reservation.guest_name, @response.body
  end

  # NEW
  test "should get new" do
    get new_room_reservation_url(@room)
    assert_response :success
  end

  # CREATE
  test "should create reservation" do
    assert_difference('Reservation.count', 1) do
      post room_reservations_url(@room), params: {
        reservation: {
          guest_name: "Nouveau Guest",
          start_date: Date.today,
          end_date: Date.today + 2
        }
      }
    end
    assert_redirected_to room_reservations_url(@room)
  end

  # SHOW
  test "should get show" do
    get room_reservation_url(@room, @reservation)
    assert_response :success
    assert_match @reservation.guest_name, @response.body
  end

  # EDIT
  test "should get edit" do
    get edit_room_reservation_url(@room, @reservation)
    assert_response :success
  end

  # UPDATE
  test "should update reservation" do
    patch room_reservation_url(@room, @reservation), params: { reservation: { guest_name: "Guest Modifié" } }
    assert_redirected_to room_reservation_url(@room, @reservation)
    @reservation.reload
    assert_equal "Guest Modifié", @reservation.guest_name
  end

  # DESTROY
  test "should destroy reservation" do
    assert_difference('Reservation.count', -1) do
      delete room_reservation_url(@room, @reservation)
    end
    assert_redirected_to room_reservations_url(@room)
  end
end
