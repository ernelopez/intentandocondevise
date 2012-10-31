require 'test_helper'

class ProvisControllerTest < ActionController::TestCase
  setup do
    @provi = provis(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:provis)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create provi" do
    assert_difference('Provi.count') do
      post :create, provi: { prov: @provi.prov }
    end

    assert_redirected_to provi_path(assigns(:provi))
  end

  test "should show provi" do
    get :show, id: @provi
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @provi
    assert_response :success
  end

  test "should update provi" do
    put :update, id: @provi, provi: { prov: @provi.prov }
    assert_redirected_to provi_path(assigns(:provi))
  end

  test "should destroy provi" do
    assert_difference('Provi.count', -1) do
      delete :destroy, id: @provi
    end

    assert_redirected_to provis_path
  end
end
