require 'test_helper'

class AdvisorshipsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:advisorships)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create advisorship" do
    assert_difference('Advisorship.count') do
      post :create, :advisorship => { }
    end

    assert_redirected_to advisorship_path(assigns(:advisorship))
  end

  test "should show advisorship" do
    get :show, :id => advisorships(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => advisorships(:one).to_param
    assert_response :success
  end

  test "should update advisorship" do
    put :update, :id => advisorships(:one).to_param, :advisorship => { }
    assert_redirected_to advisorship_path(assigns(:advisorship))
  end

  test "should destroy advisorship" do
    assert_difference('Advisorship.count', -1) do
      delete :destroy, :id => advisorships(:one).to_param
    end

    assert_redirected_to advisorships_path
  end
end
