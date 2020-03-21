require "application_system_test_case"

class KrankenhausTest < ApplicationSystemTestCase
  setup do
    @krankenhau = krankenhaus(:one)
  end

  test "visiting the index" do
    visit krankenhaus_url
    assert_selector "h1", text: "Krankenhaus"
  end

  test "creating a Krankenhau" do
    visit krankenhaus_url
    click_on "New Krankenhau"

    click_on "Create Krankenhau"

    assert_text "Krankenhau was successfully created"
    click_on "Back"
  end

  test "updating a Krankenhau" do
    visit krankenhaus_url
    click_on "Edit", match: :first

    click_on "Update Krankenhau"

    assert_text "Krankenhau was successfully updated"
    click_on "Back"
  end

  test "destroying a Krankenhau" do
    visit krankenhaus_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Krankenhau was successfully destroyed"
  end
end
