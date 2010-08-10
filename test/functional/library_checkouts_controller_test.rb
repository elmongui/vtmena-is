require 'test_helper'

class LibraryCheckoutsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:library_checkouts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create library_checkout" do
    assert_difference('LibraryCheckout.count') do
      post :create, :library_checkout => { }
    end

    assert_redirected_to library_checkout_path(assigns(:library_checkout))
  end

  test "should show library_checkout" do
    get :show, :id => library_checkouts(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => library_checkouts(:one).to_param
    assert_response :success
  end

  test "should update library_checkout" do
    put :update, :id => library_checkouts(:one).to_param, :library_checkout => { }
    assert_redirected_to library_checkout_path(assigns(:library_checkout))
  end

  test "should destroy library_checkout" do
    assert_difference('LibraryCheckout.count', -1) do
      delete :destroy, :id => library_checkouts(:one).to_param
    end

    assert_redirected_to library_checkouts_path
  end
end
