require 'test_helper'

class StudentsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get students_new_url
    assert_response :success
  end

  test "should get edit" do
    get students_edit_url
    assert_response :success
  end

  test "should get show" do
    get students_show_url
    assert_response :success
  end

  test "should get delete" do
    get students_delete_url
    assert_response :success
  end

end
