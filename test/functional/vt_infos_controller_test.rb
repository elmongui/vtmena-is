require 'test_helper'

class VtInfosControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:vt_infos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create vt_info" do
    assert_difference('VtInfo.count') do
      post :create, :vt_info => { }
    end

    assert_redirected_to vt_info_path(assigns(:vt_info))
  end

  test "should show vt_info" do
    get :show, :id => vt_infos(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => vt_infos(:one).to_param
    assert_response :success
  end

  test "should update vt_info" do
    put :update, :id => vt_infos(:one).to_param, :vt_info => { }
    assert_redirected_to vt_info_path(assigns(:vt_info))
  end

  test "should destroy vt_info" do
    assert_difference('VtInfo.count', -1) do
      delete :destroy, :id => vt_infos(:one).to_param
    end

    assert_redirected_to vt_infos_path
  end
end
