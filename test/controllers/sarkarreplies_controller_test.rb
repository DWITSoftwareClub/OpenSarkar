require 'test_helper'

class SarkarrepliesControllerTest < ActionController::TestCase
  setup do
    @sarkarreply = sarkarreplies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sarkarreplies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sarkarreply" do
    assert_difference('Sarkarreply.count') do
      post :create, sarkarreply: { reply: @sarkarreply.reply }
    end

    assert_redirected_to sarkarreply_path(assigns(:sarkarreply))
  end

  test "should show sarkarreply" do
    get :show, id: @sarkarreply
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sarkarreply
    assert_response :success
  end

  test "should update sarkarreply" do
    patch :update, id: @sarkarreply, sarkarreply: { reply: @sarkarreply.reply }
    assert_redirected_to sarkarreply_path(assigns(:sarkarreply))
  end

  test "should destroy sarkarreply" do
    assert_difference('Sarkarreply.count', -1) do
      delete :destroy, id: @sarkarreply
    end

    assert_redirected_to sarkarreplies_path
  end
end
