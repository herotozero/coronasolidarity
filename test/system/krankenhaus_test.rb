require "application_system_test_case"

class KrankenhausTest < ApplicationSystemTestCase
  setup do
    @krankenhau = krankenhaus(:one)
  end

  test "visiting the index" do
    visit krankenhaus_url
    assert_selector "h1", text: "Krankenhaus"
  end

  test "creating a Krankenhaus" do
    visit krankenhaus_url
    click_on "New Krankenhaus"

    click_on "Create Krankenhaus"

    assert_text "Krankenhaus was successfully created"
    click_on "Back"
  end

  test "updating a Krankenhaus" do
    visit krankenhaus_url
    click_on "Edit", match: :first

    click_on "Update Krankenhaus"

    assert_text "Krankenhaus was successfully updated"
    click_on "Back"
  end

  test "destroying a Krankenhaus" do
    visit krankenhaus_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Krankenhaus was successfully destroyed"
  end
end
