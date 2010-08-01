require 'test_helper'

class VtmenaAcademicProgressesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:vtmena_academic_progresses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create vtmena_academic_progress" do
    assert_difference('VtmenaAcademicProgress.count') do
      post :create, :vtmena_academic_progress => { }
    end

    assert_redirected_to vtmena_academic_progress_path(assigns(:vtmena_academic_progress))
  end

  test "should show vtmena_academic_progress" do
    get :show, :id => vtmena_academic_progresses(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => vtmena_academic_progresses(:one).to_param
    assert_response :success
  end

  test "should update vtmena_academic_progress" do
    put :update, :id => vtmena_academic_progresses(:one).to_param, :vtmena_academic_progress => { }
    assert_redirected_to vtmena_academic_progress_path(assigns(:vtmena_academic_progress))
  end

  test "should destroy vtmena_academic_progress" do
    assert_difference('VtmenaAcademicProgress.count', -1) do
      delete :destroy, :id => vtmena_academic_progresses(:one).to_param
    end

    assert_redirected_to vtmena_academic_progresses_path
  end
end
