require "application_system_test_case"

class StudentsformsTest < ApplicationSystemTestCase
  setup do
    @studentsform = studentsforms(:one)
  end

  test "visiting the index" do
    visit studentsforms_url
    assert_selector "h1", text: "Studentsforms"
  end

  test "creating a Studentsform" do
    visit studentsforms_url
    click_on "New Studentsform"

    fill_in "Age", with: @studentsform.age
    fill_in "Firstname", with: @studentsform.firstname
    fill_in "Lastname", with: @studentsform.lastname
    fill_in "Regno", with: @studentsform.regno
    click_on "Create Studentsform"

    assert_text "Studentsform was successfully created"
    click_on "Back"
  end

  test "updating a Studentsform" do
    visit studentsforms_url
    click_on "Edit", match: :first

    fill_in "Age", with: @studentsform.age
    fill_in "Firstname", with: @studentsform.firstname
    fill_in "Lastname", with: @studentsform.lastname
    fill_in "Regno", with: @studentsform.regno
    click_on "Update Studentsform"

    assert_text "Studentsform was successfully updated"
    click_on "Back"
  end

  test "destroying a Studentsform" do
    visit studentsforms_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Studentsform was successfully destroyed"
  end
end
