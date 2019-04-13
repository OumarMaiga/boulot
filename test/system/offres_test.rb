require "application_system_test_case"

class OffresTest < ApplicationSystemTestCase
  setup do
    @offre = offres(:one)
  end

  test "visiting the index" do
    visit offres_url
    assert_selector "h1", text: "Offres"
  end

  test "creating a Offre" do
    visit offres_url
    click_on "New Offre"

    fill_in "Date close", with: @offre.date_close
    fill_in "Description", with: @offre.description
    fill_in "Domaine", with: @offre.domaine_id
    check "Etat" if @offre.etat
    fill_in "Montan min", with: @offre.montan_min
    fill_in "Montant max", with: @offre.montant_max
    fill_in "Titre", with: @offre.titre
    fill_in "User", with: @offre.user_id
    click_on "Create Offre"

    assert_text "Offre was successfully created"
    click_on "Back"
  end

  test "updating a Offre" do
    visit offres_url
    click_on "Edit", match: :first

    fill_in "Date close", with: @offre.date_close
    fill_in "Description", with: @offre.description
    fill_in "Domaine", with: @offre.domaine_id
    check "Etat" if @offre.etat
    fill_in "Montan min", with: @offre.montan_min
    fill_in "Montant max", with: @offre.montant_max
    fill_in "Titre", with: @offre.titre
    fill_in "User", with: @offre.user_id
    click_on "Update Offre"

    assert_text "Offre was successfully updated"
    click_on "Back"
  end

  test "destroying a Offre" do
    visit offres_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Offre was successfully destroyed"
  end
end
