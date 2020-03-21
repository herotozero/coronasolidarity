require "application_system_test_case"

class HelfersTest < ApplicationSystemTestCase
  setup do
    @helfer = helfers(:one)
  end

  test "visiting the index" do
    visit helfers_url
    assert_selector "h1", text: "Helfers"
  end

  test "creating a Helfer" do
    visit helfers_url
    click_on "New Helfer"

    click_on "Create Helfer"

    assert_text "Helfer was successfully created"
    click_on "Back"
  end

  test "updating a Helfer" do
    visit helfers_url
    click_on "Edit", match: :first

    click_on "Update Helfer"

    assert_text "Helfer was successfully updated"
    click_on "Back"
  end

  test "destroying a Helfer" do
    visit helfers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Helfer was successfully destroyed"
  end
end
