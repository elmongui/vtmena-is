require 'test_helper'

class OfferedClassesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:offered_classes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create offered_class" do
    assert_difference('OfferedClass.count') do
      post :create, :offered_class => { }
    end

    assert_redirected_to offered_class_path(assigns(:offered_class))
  end

  test "should show offered_class" do
    get :show, :id => offered_classes(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => offered_classes(:one).to_param
    assert_response :success
  end

  test "should update offered_class" do
    put :update, :id => offered_classes(:one).to_param, :offered_class => { }
    assert_redirected_to offered_class_path(assigns(:offered_class))
  end

  test "should destroy offered_class" do
    assert_difference('OfferedClass.count', -1) do
      delete :destroy, :id => offered_classes(:one).to_param
    end

    assert_redirected_to offered_classes_path
  end
end
