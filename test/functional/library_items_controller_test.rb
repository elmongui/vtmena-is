require 'test_helper'

class LibraryItemsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:library_items)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create library_item" do
    assert_difference('LibraryItem.count') do
      post :create, :library_item => { }
    end

    assert_redirected_to library_item_path(assigns(:library_item))
  end

  test "should show library_item" do
    get :show, :id => library_items(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => library_items(:one).to_param
    assert_response :success
  end

  test "should update library_item" do
    put :update, :id => library_items(:one).to_param, :library_item => { }
    assert_redirected_to library_item_path(assigns(:library_item))
  end

  test "should destroy library_item" do
    assert_difference('LibraryItem.count', -1) do
      delete :destroy, :id => library_items(:one).to_param
    end

    assert_redirected_to library_items_path
  end
end
