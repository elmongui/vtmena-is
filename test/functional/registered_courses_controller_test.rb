require 'test_helper'

class RegisteredCoursesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:registered_courses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create registered_course" do
    assert_difference('RegisteredCourse.count') do
      post :create, :registered_course => { }
    end

    assert_redirected_to registered_course_path(assigns(:registered_course))
  end

  test "should show registered_course" do
    get :show, :id => registered_courses(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => registered_courses(:one).to_param
    assert_response :success
  end

  test "should update registered_course" do
    put :update, :id => registered_courses(:one).to_param, :registered_course => { }
    assert_redirected_to registered_course_path(assigns(:registered_course))
  end

  test "should destroy registered_course" do
    assert_difference('RegisteredCourse.count', -1) do
      delete :destroy, :id => registered_courses(:one).to_param
    end

    assert_redirected_to registered_courses_path
  end
end
