require "test_helper"

class RoomsControllerTest < ActionDispatch::IntegrationTest

  setup do
    @room = Room.create!(
      name: "Chambre Test",
      description: "Chambre confortable pour test",
      price: 100
    )
  end

  teardown do
    @room.destroy
  end

  # INDEX
  test "should get index" do
    get rooms_url
    assert_response :success
    assert_match @room.name, @response.body
  end

  # SHOW
  test "should get show" do
    get room_url(@room)
    assert_response :success
    assert_match @room.name, @response.body
  end

  # NEW
  test "should get new" do
    get new_room_url
    assert_response :success
  end

  # CREATE
  test "should create room" do
    assert_difference('Room.count', 1) do
      post rooms_url, params: {
        room: { name: "Nouvelle Chambre", description: "Test create", price: 120 }
      }
    end
    assert_redirected_to room_url(Room.last)
  end

  # EDIT
  test "should get edit" do
    get edit_room_url(@room)
    assert_response :success
  end

  # UPDATE
  test "should update room" do
    patch room_url(@room), params: { room: { price: 150 } }
    assert_redirected_to room_url(@room)
    @room.reload
    assert_equal 150, @room.price
  end

  # DESTROY
  test "should destroy room" do
    assert_difference('Room.count', -1) do
      delete room_url(@room)
    end
    assert_redirected_to rooms_url
  end
end
