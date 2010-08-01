require 'test_helper'

class AcademicCredentialsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:academic_credentials)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create academic_credential" do
    assert_difference('AcademicCredential.count') do
      post :create, :academic_credential => { }
    end

    assert_redirected_to academic_credential_path(assigns(:academic_credential))
  end

  test "should show academic_credential" do
    get :show, :id => academic_credentials(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => academic_credentials(:one).to_param
    assert_response :success
  end

  test "should update academic_credential" do
    put :update, :id => academic_credentials(:one).to_param, :academic_credential => { }
    assert_redirected_to academic_credential_path(assigns(:academic_credential))
  end

  test "should destroy academic_credential" do
    assert_difference('AcademicCredential.count', -1) do
      delete :destroy, :id => academic_credentials(:one).to_param
    end

    assert_redirected_to academic_credentials_path
  end
end
