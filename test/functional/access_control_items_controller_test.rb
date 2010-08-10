require 'test_helper'

class AccessControlItemsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:access_control_items)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create access_control_item" do
    assert_difference('AccessControlItem.count') do
      post :create, :access_control_item => { }
    end

    assert_redirected_to access_control_item_path(assigns(:access_control_item))
  end

  test "should show access_control_item" do
    get :show, :id => access_control_items(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => access_control_items(:one).to_param
    assert_response :success
  end

  test "should update access_control_item" do
    put :update, :id => access_control_items(:one).to_param, :access_control_item => { }
    assert_redirected_to access_control_item_path(assigns(:access_control_item))
  end

  test "should destroy access_control_item" do
    assert_difference('AccessControlItem.count', -1) do
      delete :destroy, :id => access_control_items(:one).to_param
    end

    assert_redirected_to access_control_items_path
  end
end
