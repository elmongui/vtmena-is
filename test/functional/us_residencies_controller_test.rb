require 'test_helper'

class UsResidenciesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:us_residencies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create us_residency" do
    assert_difference('UsResidency.count') do
      post :create, :us_residency => { }
    end

    assert_redirected_to us_residency_path(assigns(:us_residency))
  end

  test "should show us_residency" do
    get :show, :id => us_residencies(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => us_residencies(:one).to_param
    assert_response :success
  end

  test "should update us_residency" do
    put :update, :id => us_residencies(:one).to_param, :us_residency => { }
    assert_redirected_to us_residency_path(assigns(:us_residency))
  end

  test "should destroy us_residency" do
    assert_difference('UsResidency.count', -1) do
      delete :destroy, :id => us_residencies(:one).to_param
    end

    assert_redirected_to us_residencies_path
  end
end
