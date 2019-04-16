require 'test_helper'

class CursusControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cursu = cursus(:one)
  end

  test "should get index" do
    get cursus_url
    assert_response :success
  end

  test "should get new" do
    get new_cursu_url
    assert_response :success
  end

  test "should create cursu" do
    assert_difference('Cursu.count') do
      post cursus_url, params: { cursu: { annee_debut: @cursu.annee_debut, annee_fin: @cursu.annee_fin, diplome: @cursu.diplome, ecole: @cursu.ecole, user_id: @cursu.user_id } }
    end

    assert_redirected_to cursu_url(Cursu.last)
  end

  test "should show cursu" do
    get cursu_url(@cursu)
    assert_response :success
  end

  test "should get edit" do
    get edit_cursu_url(@cursu)
    assert_response :success
  end

  test "should update cursu" do
    patch cursu_url(@cursu), params: { cursu: { annee_debut: @cursu.annee_debut, annee_fin: @cursu.annee_fin, diplome: @cursu.diplome, ecole: @cursu.ecole, user_id: @cursu.user_id } }
    assert_redirected_to cursu_url(@cursu)
  end

  test "should destroy cursu" do
    assert_difference('Cursu.count', -1) do
      delete cursu_url(@cursu)
    end

    assert_redirected_to cursus_url
  end
end
