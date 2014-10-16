require 'test_helper'

class SubmissiomsControllerTest < ActionController::TestCase
  setup do
    @submissiom = submissioms(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:submissioms)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create submissiom" do
    assert_difference('Submissiom.count') do
      post :create, submissiom: { title: @submissiom.title, url: @submissiom.url }
    end

    assert_redirected_to submissiom_path(assigns(:submissiom))
  end

  test "should show submissiom" do
    get :show, id: @submissiom
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @submissiom
    assert_response :success
  end

  test "should update submissiom" do
    patch :update, id: @submissiom, submissiom: { title: @submissiom.title, url: @submissiom.url }
    assert_redirected_to submissiom_path(assigns(:submissiom))
  end

  test "should destroy submissiom" do
    assert_difference('Submissiom.count', -1) do
      delete :destroy, id: @submissiom
    end

    assert_redirected_to submissioms_path
  end
end
