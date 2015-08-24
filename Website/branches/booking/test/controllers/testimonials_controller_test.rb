require 'test_helper'

class TestimonialsControllerTest < ActionController::TestCase
  setup do
    @testimonial = testimonials(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:testimonials)
  end

  test "should get new" do
    #get :new
    #assert_response :error
		assert_raise(ActionController::UrlGenerationError) {get :new}
  end

  test "should create testimonial" do
    #assert_difference('Testimonial.count') do
    #  post :create, testimonial: { from: @testimonial.from, quote: @testimonial.quote }
    #end
    #
    #assert_redirected_to testimonial_path(assigns(:testimonial))
		assert_raise(ActionController::UrlGenerationError) {post :create, testimonial: { from: @testimonial.from, quote: @testimonial.quote }}
  end

  test "should show testimonial" do
    #get :show, id: @testimonial
    #assert_response :error
		assert_raise(ActionController::UrlGenerationError) {get :show, id: @testimonial}
  end

  test "should get edit" do
    #get :edit, id: @testimonial
    #assert_response :error
		assert_raise(ActionController::UrlGenerationError) {get :edit, id: @testimonial}
  end

  test "should update testimonial" do
    #patch :update, id: @testimonial, testimonial: { from: @testimonial.from, quote: @testimonial.quote }
    #assert_redirected_to testimonial_path(assigns(:testimonial))
		assert_raise(ActionController::UrlGenerationError) {patch :update, id: @testimonial, testimonial: { from: @testimonial.from, quote: @testimonial.quote }}
  end

  test "should destroy testimonial" do
    #assert_difference('Testimonial.count', -1) do
    #  delete :destroy, id: @testimonial
    #end
    #
    #assert_redirected_to testimonials_path
		assert_raise(ActionController::UrlGenerationError) {delete :destroy, id: @testimonial}
  end
end
