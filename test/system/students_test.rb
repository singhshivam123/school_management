require "application_system_test_case"

class StudentsTest < ApplicationSystemTestCase
  setup do
    @student = students(:one)
  end

  test "visiting the index" do
    visit students_url
    assert_selector "h1", text: "Students"
  end

  test "creating a Student" do
    visit students_url
    click_on "New Student"

    fill_in "Date of birth", with: @student.date_of_birth
    fill_in "Father name", with: @student.father_name
    fill_in "First name", with: @student.first_name
    fill_in "Join date", with: @student.join_date
    fill_in "Last name", with: @student.last_name
    fill_in "Leaving date", with: @student.leaving_date
    fill_in "Middle name", with: @student.middle_name
    fill_in "Mobile", with: @student.mobile
    click_on "Create Student"

    assert_text "Student was successfully created"
    click_on "Back"
  end

  test "updating a Student" do
    visit students_url
    click_on "Edit", match: :first

    fill_in "Date of birth", with: @student.date_of_birth
    fill_in "Father name", with: @student.father_name
    fill_in "First name", with: @student.first_name
    fill_in "Join date", with: @student.join_date
    fill_in "Last name", with: @student.last_name
    fill_in "Leaving date", with: @student.leaving_date
    fill_in "Middle name", with: @student.middle_name
    fill_in "Mobile", with: @student.mobile
    click_on "Update Student"

    assert_text "Student was successfully updated"
    click_on "Back"
  end

  test "destroying a Student" do
    visit students_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Student was successfully destroyed"
  end
end
