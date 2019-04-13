require 'test_helper'

class PostulersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @postuler = postulers(:one)
  end

  test "should get index" do
    get postulers_url
    assert_response :success
  end

  test "should get new" do
    get new_postuler_url
    assert_response :success
  end

  test "should create postuler" do
    assert_difference('Postuler.count') do
      post postulers_url, params: { postuler: { montant: @postuler.montant, motivation: @postuler.motivation, offre_id: @postuler.offre_id, user_id: @postuler.user_id } }
    end

    assert_redirected_to postuler_url(Postuler.last)
  end

  test "should show postuler" do
    get postuler_url(@postuler)
    assert_response :success
  end

  test "should get edit" do
    get edit_postuler_url(@postuler)
    assert_response :success
  end

  test "should update postuler" do
    patch postuler_url(@postuler), params: { postuler: { montant: @postuler.montant, motivation: @postuler.motivation, offre_id: @postuler.offre_id, user_id: @postuler.user_id } }
    assert_redirected_to postuler_url(@postuler)
  end

  test "should destroy postuler" do
    assert_difference('Postuler.count', -1) do
      delete postuler_url(@postuler)
    end

    assert_redirected_to postulers_url
  end
end
