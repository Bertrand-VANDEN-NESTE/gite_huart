require "test_helper"

class HomeControllerTest < ActionDispatch::IntegrationTest

  setup do
    @home = Home.create!(name: "Home Test")
  end

  teardown do
    @home.destroy
  end

  # INDEX
  test "should get index" do
    get homes_url
    assert_response :success
  end

  # SHOW
  test "should get show" do
    get home_url(@home)
    assert_response :success
  end

  # NEW
  test "should get new" do
    get new_home_url
    assert_response :success
  end

  # CREATE
  test "should create home" do
    assert_difference('Home.count', 1) do
      post homes_url, params: { home: { name: "Nouvelle Home" } }
    end
    assert_redirected_to home_url(Home.last)
  end

  # EDIT
  test "should get edit" do
    get edit_home_url(@home)
    assert_response :success
  end

  # UPDATE
  test "should update home" do
    patch home_url(@home), params: { home: { name: "Modifié" } }
    assert_redirected_to home_url(@home)
    @home.reload
    assert_equal "Modifié", @home.name
  end

  # DESTROY
  test "should destroy home" do
    assert_difference('Home.count', -1) do
      delete home_url(@home)
    end
    assert_redirected_to homes_url
  end
end
