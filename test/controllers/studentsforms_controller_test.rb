require 'test_helper'

class StudentsformsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @studentsform = studentsforms(:one)
  end

  test "should get index" do
    get studentsforms_url
    assert_response :success
  end

  test "should get new" do
    get new_studentsform_url
    assert_response :success
  end

  test "should create studentsform" do
    assert_difference('Studentsform.count') do
      post studentsforms_url, params: { studentsform: { age: @studentsform.age, firstname: @studentsform.firstname, lastname: @studentsform.lastname, regno: @studentsform.regno } }
    end

    assert_redirected_to studentsform_url(Studentsform.last)
  end

  test "should show studentsform" do
    get studentsform_url(@studentsform)
    assert_response :success
  end

  test "should get edit" do
    get edit_studentsform_url(@studentsform)
    assert_response :success
  end

  test "should update studentsform" do
    patch studentsform_url(@studentsform), params: { studentsform: { age: @studentsform.age, firstname: @studentsform.firstname, lastname: @studentsform.lastname, regno: @studentsform.regno } }
    assert_redirected_to studentsform_url(@studentsform)
  end

  test "should destroy studentsform" do
    assert_difference('Studentsform.count', -1) do
      delete studentsform_url(@studentsform)
    end

    assert_redirected_to studentsforms_url
  end
end
