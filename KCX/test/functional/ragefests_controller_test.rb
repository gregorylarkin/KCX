require 'test_helper'

class RagefestsControllerTest < ActionController::TestCase
  setup do
    @ragefest = ragefests(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ragefests)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ragefest" do
    assert_difference('Ragefest.count') do
      post :create, ragefest: { costume_id: @ragefest.costume_id, party_time: @ragefest.party_time, theme_id: @ragefest.theme_id }
    end

    assert_redirected_to ragefest_path(assigns(:ragefest))
  end

  test "should show ragefest" do
    get :show, id: @ragefest
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ragefest
    assert_response :success
  end

  test "should update ragefest" do
    put :update, id: @ragefest, ragefest: { costume_id: @ragefest.costume_id, party_time: @ragefest.party_time, theme_id: @ragefest.theme_id }
    assert_redirected_to ragefest_path(assigns(:ragefest))
  end

  test "should destroy ragefest" do
    assert_difference('Ragefest.count', -1) do
      delete :destroy, id: @ragefest
    end

    assert_redirected_to ragefests_path
  end
end
