require "application_system_test_case"

class DomainesTest < ApplicationSystemTestCase
  setup do
    @domaine = domaines(:one)
  end

  test "visiting the index" do
    visit domaines_url
    assert_selector "h1", text: "Domaines"
  end

  test "creating a Domaine" do
    visit domaines_url
    click_on "New Domaine"

    fill_in "Nom", with: @domaine.nom
    fill_in "User", with: @domaine.user_id
    click_on "Create Domaine"

    assert_text "Domaine was successfully created"
    click_on "Back"
  end

  test "updating a Domaine" do
    visit domaines_url
    click_on "Edit", match: :first

    fill_in "Nom", with: @domaine.nom
    fill_in "User", with: @domaine.user_id
    click_on "Update Domaine"

    assert_text "Domaine was successfully updated"
    click_on "Back"
  end

  test "destroying a Domaine" do
    visit domaines_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Domaine was successfully destroyed"
  end
end
