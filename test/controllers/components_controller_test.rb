require "test_helper"

class ComponentsControllerTest < ActionDispatch::IntegrationTest

  setup do
    @component = Component.create!(name: "Component Test")
  end

  teardown do
    @component.destroy
  end

  # INDEX
  test "should get index" do
    get components_url
    assert_response :success
  end

  # SHOW
  test "should get show" do
    get component_url(@component)
    assert_response :success
  end

  # NEW
  test "should get new" do
    get new_component_url
    assert_response :success
  end

  # CREATE
  test "should create component" do
    assert_difference('Component.count', 1) do
      post components_url, params: { component: { name: "Nouvelle Component" } }
    end
    assert_redirected_to component_url(Component.last)
  end

  # EDIT
  test "should get edit" do
    get edit_component_url(@component)
    assert_response :success
  end

  # UPDATE
  test "should update component" do
    patch component_url(@component), params: { component: { name: "Modifié" } }
    assert_redirected_to component_url(@component)
    @component.reload
    assert_equal "Modifié", @component.name
  end

  # DESTROY
  test "should destroy component" do
    assert_difference('Component.count', -1) do
      delete component_url(@component)
    end
    assert_redirected_to components_url
  end
end
