require 'test_helper'

class ClassSessionsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:class_sessions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create class_session" do
    assert_difference('ClassSession.count') do
      post :create, :class_session => { }
    end

    assert_redirected_to class_session_path(assigns(:class_session))
  end

  test "should show class_session" do
    get :show, :id => class_sessions(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => class_sessions(:one).to_param
    assert_response :success
  end

  test "should update class_session" do
    put :update, :id => class_sessions(:one).to_param, :class_session => { }
    assert_redirected_to class_session_path(assigns(:class_session))
  end

  test "should destroy class_session" do
    assert_difference('ClassSession.count', -1) do
      delete :destroy, :id => class_sessions(:one).to_param
    end

    assert_redirected_to class_sessions_path
  end
end
