require 'test_helper'

class SansControllerTest < ActionController::TestCase
  setup do
    @san = sans(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sans)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create san" do
    assert_difference('San.count') do
      post :create, san: { title: @san.title }
    end

    assert_redirected_to san_path(assigns(:san))
  end

  test "should show san" do
    get :show, id: @san
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @san
    assert_response :success
  end

  test "should update san" do
    patch :update, id: @san, san: { title: @san.title }
    assert_redirected_to san_path(assigns(:san))
  end

  test "should destroy san" do
    assert_difference('San.count', -1) do
      delete :destroy, id: @san
    end

    assert_redirected_to sans_path
  end
end
