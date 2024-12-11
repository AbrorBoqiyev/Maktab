require "test_helper"

class PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get pages_home_url
    assert_response :success
  end

  test "should get teachers" do
    get pages_teachers_url
    assert_response :success
  end

  test "should get students" do
    get pages_students_url
    assert_response :success
  end
end
