require 'test_helper'

class AuInfosControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:au_infos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create au_info" do
    assert_difference('AuInfo.count') do
      post :create, :au_info => { }
    end

    assert_redirected_to au_info_path(assigns(:au_info))
  end

  test "should show au_info" do
    get :show, :id => au_infos(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => au_infos(:one).to_param
    assert_response :success
  end

  test "should update au_info" do
    put :update, :id => au_infos(:one).to_param, :au_info => { }
    assert_redirected_to au_info_path(assigns(:au_info))
  end

  test "should destroy au_info" do
    assert_difference('AuInfo.count', -1) do
      delete :destroy, :id => au_infos(:one).to_param
    end

    assert_redirected_to au_infos_path
  end
end
