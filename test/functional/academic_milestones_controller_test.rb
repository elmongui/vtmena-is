require 'test_helper'

class AcademicMilestonesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:academic_milestones)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create academic_milestone" do
    assert_difference('AcademicMilestone.count') do
      post :create, :academic_milestone => { }
    end

    assert_redirected_to academic_milestone_path(assigns(:academic_milestone))
  end

  test "should show academic_milestone" do
    get :show, :id => academic_milestones(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => academic_milestones(:one).to_param
    assert_response :success
  end

  test "should update academic_milestone" do
    put :update, :id => academic_milestones(:one).to_param, :academic_milestone => { }
    assert_redirected_to academic_milestone_path(assigns(:academic_milestone))
  end

  test "should destroy academic_milestone" do
    assert_difference('AcademicMilestone.count', -1) do
      delete :destroy, :id => academic_milestones(:one).to_param
    end

    assert_redirected_to academic_milestones_path
  end
end
