require 'test_helper'

class AchievementsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:achievements)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create achievement" do
    assert_difference('Achievement.count') do
      post :create, :achievement => { }
    end

    assert_redirected_to achievement_path(assigns(:achievement))
  end

  test "should show achievement" do
    get :show, :id => achievements(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => achievements(:one).to_param
    assert_response :success
  end

  test "should update achievement" do
    put :update, :id => achievements(:one).to_param, :achievement => { }
    assert_redirected_to achievement_path(assigns(:achievement))
  end

  test "should destroy achievement" do
    assert_difference('Achievement.count', -1) do
      delete :destroy, :id => achievements(:one).to_param
    end

    assert_redirected_to achievements_path
  end
end
