require "application_system_test_case"

class PostulersTest < ApplicationSystemTestCase
  setup do
    @postuler = postulers(:one)
  end

  test "visiting the index" do
    visit postulers_url
    assert_selector "h1", text: "Postulers"
  end

  test "creating a Postuler" do
    visit postulers_url
    click_on "New Postuler"

    fill_in "Montant", with: @postuler.montant
    fill_in "Motivation", with: @postuler.motivation
    fill_in "Offre", with: @postuler.offre_id
    fill_in "User", with: @postuler.user_id
    click_on "Create Postuler"

    assert_text "Postuler was successfully created"
    click_on "Back"
  end

  test "updating a Postuler" do
    visit postulers_url
    click_on "Edit", match: :first

    fill_in "Montant", with: @postuler.montant
    fill_in "Motivation", with: @postuler.motivation
    fill_in "Offre", with: @postuler.offre_id
    fill_in "User", with: @postuler.user_id
    click_on "Update Postuler"

    assert_text "Postuler was successfully updated"
    click_on "Back"
  end

  test "destroying a Postuler" do
    visit postulers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Postuler was successfully destroyed"
  end
end
