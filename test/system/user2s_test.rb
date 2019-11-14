require "application_system_test_case"

class User2sTest < ApplicationSystemTestCase
  setup do
    @user2 = user2s(:one)
  end

  test "visiting the index" do
    visit user2s_url
    assert_selector "h1", text: "User2s"
  end

  test "creating a User2" do
    visit user2s_url
    click_on "New User2"

    fill_in "Email", with: @user2.email
    fill_in "First name", with: @user2.first_name
    fill_in "Last name", with: @user2.last_name
    fill_in "Password", with: 'secret'
    fill_in "Password confirmation", with: 'secret'
    click_on "Create User2"

    assert_text "User2 was successfully created"
    click_on "Back"
  end

  test "updating a User2" do
    visit user2s_url
    click_on "Edit", match: :first

    fill_in "Email", with: @user2.email
    fill_in "First name", with: @user2.first_name
    fill_in "Last name", with: @user2.last_name
    fill_in "Password", with: 'secret'
    fill_in "Password confirmation", with: 'secret'
    click_on "Update User2"

    assert_text "User2 was successfully updated"
    click_on "Back"
  end

  test "destroying a User2" do
    visit user2s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "User2 was successfully destroyed"
  end
end
