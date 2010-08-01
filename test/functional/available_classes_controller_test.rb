require 'test_helper'

class AvailableClassesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:available_classes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create available_class" do
    assert_difference('AvailableClass.count') do
      post :create, :available_class => { }
    end

    assert_redirected_to available_class_path(assigns(:available_class))
  end

  test "should show available_class" do
    get :show, :id => available_classes(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => available_classes(:one).to_param
    assert_response :success
  end

  test "should update available_class" do
    put :update, :id => available_classes(:one).to_param, :available_class => { }
    assert_redirected_to available_class_path(assigns(:available_class))
  end

  test "should destroy available_class" do
    assert_difference('AvailableClass.count', -1) do
      delete :destroy, :id => available_classes(:one).to_param
    end

    assert_redirected_to available_classes_path
  end
end
