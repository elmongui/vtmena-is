require 'test_helper'

class CorrespondenceTopicsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:correspondence_topics)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create correspondence_topic" do
    assert_difference('CorrespondenceTopic.count') do
      post :create, :correspondence_topic => { }
    end

    assert_redirected_to correspondence_topic_path(assigns(:correspondence_topic))
  end

  test "should show correspondence_topic" do
    get :show, :id => correspondence_topics(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => correspondence_topics(:one).to_param
    assert_response :success
  end

  test "should update correspondence_topic" do
    put :update, :id => correspondence_topics(:one).to_param, :correspondence_topic => { }
    assert_redirected_to correspondence_topic_path(assigns(:correspondence_topic))
  end

  test "should destroy correspondence_topic" do
    assert_difference('CorrespondenceTopic.count', -1) do
      delete :destroy, :id => correspondence_topics(:one).to_param
    end

    assert_redirected_to correspondence_topics_path
  end
end
