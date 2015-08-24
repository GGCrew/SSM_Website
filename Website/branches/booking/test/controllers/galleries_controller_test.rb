require 'test_helper'

class GalleriesControllerTest < ActionController::TestCase
  setup do
    @gallery = galleries(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:galleries)
  end

  test "should get new" do
    #get :new
    #assert_response :success
		assert_raise(ActionController::UrlGenerationError) {get :new}
  end

  test "should create gallery" do
    #assert_difference('Gallery.count') do
    #  post :create, gallery: {  }
    #end
    #
    #assert_redirected_to gallery_path(assigns(:gallery))
		assert_raise(ActionController::UrlGenerationError) {post :create, gallery: {  }}
  end

  test "should show gallery" do
    #get :show, id: @gallery
    #assert_response :success
		assert_raise(ActionController::UrlGenerationError) {get :show, id: @gallery}
  end

  test "should get edit" do
    #get :edit, id: @gallery
    #assert_response :success
		assert_raise(ActionController::UrlGenerationError) {get :edit, id: @gallery}
  end

  test "should update gallery" do
    #patch :update, id: @gallery, gallery: {  }
    #assert_redirected_to gallery_path(assigns(:gallery))
		assert_raise(ActionController::UrlGenerationError) {patch :update, id: @gallery, gallery: {  }}
  end

  test "should destroy gallery" do
    #assert_difference('Gallery.count', -1) do
    #  delete :destroy, id: @gallery
    #end
    #
    #assert_redirected_to galleries_path
		assert_raise(ActionController::UrlGenerationError) {delete :destroy, id: @gallery}
  end
end
