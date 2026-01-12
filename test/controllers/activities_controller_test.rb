require "test_helper"

class ActivitiesControllerTest < ActionDispatch::IntegrationTest

  setup do
    @activity = Activity.create!(
      name: "Randonnée Test",
      description: "Balade en forêt pour test"
    )
  end

  teardown do
    @activity.destroy
  end

  # INDEX
  test "should get index" do
    get activities_url
    assert_response :success
    assert_match @activity.name, @response.body
  end

  # SHOW
  test "should get show" do
    get activity_url(@activity)
    assert_response :success
    assert_match @activity.name, @response.body
  end

  # NEW
  test "should get new" do
    get new_activity_url
    assert_response :success
  end

  # CREATE
  test "should create activity" do
    assert_difference('Activity.count', 1) do
      post activities_url, params: {
        activity: {
          name: "Nouvelle Activité",
          description: "Description de l'activité"
        }
      }
    end
    new_activity = Activity.last
    assert_redirected_to activity_url(new_activity)
  end

  # EDIT
  test "should get edit" do
    get edit_activity_url(@activity)
    assert_response :success
  end

  # UPDATE
  test "should update activity" do
    patch activity_url(@activity), params: {
      activity: { name: "Randonnée Modifiée" }
    }
    assert_redirected_to activity_url(@activity)
    @activity.reload
    assert_equal "Randonnée Modifiée", @activity.name
  end

  # DESTROY
  test "should destroy activity" do
    assert_difference('Activity.count', -1) do
      delete activity_url(@activity)
    end
    assert_redirected_to activities_url
  end
end
