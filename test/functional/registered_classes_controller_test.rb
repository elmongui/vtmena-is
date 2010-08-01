require 'test_helper'

class RegisteredClassesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:registered_classes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create registered_class" do
    assert_difference('RegisteredClass.count') do
      post :create, :registered_class => { }
    end

    assert_redirected_to registered_class_path(assigns(:registered_class))
  end

  test "should show registered_class" do
    get :show, :id => registered_classes(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => registered_classes(:one).to_param
    assert_response :success
  end

  test "should update registered_class" do
    put :update, :id => registered_classes(:one).to_param, :registered_class => { }
    assert_redirected_to registered_class_path(assigns(:registered_class))
  end

  test "should destroy registered_class" do
    assert_difference('RegisteredClass.count', -1) do
      delete :destroy, :id => registered_classes(:one).to_param
    end

    assert_redirected_to registered_classes_path
  end
end
