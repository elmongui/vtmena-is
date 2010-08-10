require 'test_helper'

class AccessControlListsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:access_control_lists)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create access_control_list" do
    assert_difference('AccessControlList.count') do
      post :create, :access_control_list => { }
    end

    assert_redirected_to access_control_list_path(assigns(:access_control_list))
  end

  test "should show access_control_list" do
    get :show, :id => access_control_lists(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => access_control_lists(:one).to_param
    assert_response :success
  end

  test "should update access_control_list" do
    put :update, :id => access_control_lists(:one).to_param, :access_control_list => { }
    assert_redirected_to access_control_list_path(assigns(:access_control_list))
  end

  test "should destroy access_control_list" do
    assert_difference('AccessControlList.count', -1) do
      delete :destroy, :id => access_control_lists(:one).to_param
    end

    assert_redirected_to access_control_lists_path
  end
end
