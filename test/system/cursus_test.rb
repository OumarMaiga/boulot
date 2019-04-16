require "application_system_test_case"

class CursusTest < ApplicationSystemTestCase
  setup do
    @cursu = cursus(:one)
  end

  test "visiting the index" do
    visit cursus_url
    assert_selector "h1", text: "Cursus"
  end

  test "creating a Cursu" do
    visit cursus_url
    click_on "New Cursu"

    fill_in "Annee debut", with: @cursu.annee_debut
    fill_in "Annee fin", with: @cursu.annee_fin
    fill_in "Diplome", with: @cursu.diplome
    fill_in "Ecole", with: @cursu.ecole
    fill_in "User", with: @cursu.user_id
    click_on "Create Cursu"

    assert_text "Cursu was successfully created"
    click_on "Back"
  end

  test "updating a Cursu" do
    visit cursus_url
    click_on "Edit", match: :first

    fill_in "Annee debut", with: @cursu.annee_debut
    fill_in "Annee fin", with: @cursu.annee_fin
    fill_in "Diplome", with: @cursu.diplome
    fill_in "Ecole", with: @cursu.ecole
    fill_in "User", with: @cursu.user_id
    click_on "Update Cursu"

    assert_text "Cursu was successfully updated"
    click_on "Back"
  end

  test "destroying a Cursu" do
    visit cursus_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Cursu was successfully destroyed"
  end
end
