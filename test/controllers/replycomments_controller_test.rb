require 'test_helper'

class ReplycommentsControllerTest < ActionController::TestCase
  setup do
    @replycomment = replycomments(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:replycomments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create replycomment" do
    assert_difference('Replycomment.count') do
      post :create, replycomment: { comment: @replycomment.comment }
    end

    assert_redirected_to replycomment_path(assigns(:replycomment))
  end

  test "should show replycomment" do
    get :show, id: @replycomment
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @replycomment
    assert_response :success
  end

  test "should update replycomment" do
    patch :update, id: @replycomment, replycomment: { comment: @replycomment.comment }
    assert_redirected_to replycomment_path(assigns(:replycomment))
  end

  test "should destroy replycomment" do
    assert_difference('Replycomment.count', -1) do
      delete :destroy, id: @replycomment
    end

    assert_redirected_to replycomments_path
  end
end
