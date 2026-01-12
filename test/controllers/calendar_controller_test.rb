require "test_helper"

class CalendarControllerTest < ActionDispatch::IntegrationTest

  setup do
    @calendar = Calendar.create!(name: "Calendar Test")
  end

  teardown do
    @calendar.destroy
  end

  # INDEX
  test "should get index" do
    get calendars_url
    assert_response :success
  end

  # SHOW
  test "should get show" do
    get calendar_url(@calendar)
    assert_response :success
  end

  # NEW
  test "should get new" do
    get new_calendar_url
    assert_response :success
  end

  # CREATE
  test "should create calendar" do
    assert_difference('Calendar.count', 1) do
      post calendars_url, params: { calendar: { name: "Nouvelle Calendar" } }
    end
    assert_redirected_to calendar_url(Calendar.last)
  end

  # EDIT
  test "should get edit" do
    get edit_calendar_url(@calendar)
    assert_response :success
  end

  # UPDATE
  test "should update calendar" do
    patch calendar_url(@calendar), params: { calendar: { name: "Modifié" } }
    assert_redirected_to calendar_url(@calendar)
    @calendar.reload
    assert_equal "Modifié", @calendar.name
  end

  # DESTROY
  test "should destroy calendar" do
    assert_difference('Calendar.count', -1) do
      delete calendar_url(@calendar)
    end
    assert_redirected_to calendars_url
  end
end
