require "test_helper"

class PagesControllerTest < ActionDispatch::IntegrationTest

  setup do
    @page = Page.create!(name: "Page Test")
  end

  teardown do
    @page.destroy
  end

  # INDEX
  test "should get index" do
    get pages_url
    assert_response :success
  end

  # SHOW
  test "should get show" do
    get page_url(@page)
    assert_response :success
  end

  # NEW
  test "should get new" do
    get new_page_url
    assert_response :success
  end

  # CREATE
  test "should create page" do
    assert_difference('Page.count', 1) do
      post pages_url, params: { page: { name: "Nouvelle Page" } }
    end
    assert_redirected_to page_url(Page.last)
  end

  # EDIT
  test "should get edit" do
    get edit_page_url(@page)
    assert_response :success
  end

  # UPDATE
  test "should update page" do
    patch page_url(@page), params: { page: { name: "Modifié" } }
    assert_redirected_to page_url(@page)
    @page.reload
    assert_equal "Modifié", @page.name
  end

  # DESTROY
  test "should destroy page" do
    assert_difference('Page.count', -1) do
      delete page_url(@page)
    end
    assert_redirected_to pages_url
  end
end
