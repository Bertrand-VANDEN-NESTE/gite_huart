require "test_helper"

class ApplicationControllerTest < ActionDispatch::IntegrationTest

  setup do
    @application = Application.create!(name: "Application Test")
  end

  teardown do
    @application.destroy
  end

  # INDEX
  test "should get index" do
    get applications_url
    assert_response :success
  end

  # SHOW
  test "should get show" do
    get application_url(@application)
    assert_response :success
  end

  # NEW
  test "should get new" do
    get new_application_url
    assert_response :success
  end

  # CREATE
  test "should create application" do
    assert_difference('Application.count', 1) do
      post applications_url, params: { application: { name: "Nouvelle Application" } }
    end
    assert_redirected_to application_url(Application.last)
  end

  # EDIT
  test "should get edit" do
    get edit_application_url(@application)
    assert_response :success
  end

  # UPDATE
  test "should update application" do
    patch application_url(@application), params: { application: { name: "Modifié" } }
    assert_redirected_to application_url(@application)
    @application.reload
    assert_equal "Modifié", @application.name
  end

  # DESTROY
  test "should destroy application" do
    assert_difference('Application.count', -1) do
      delete application_url(@application)
    end
    assert_redirected_to applications_url
  end
end
