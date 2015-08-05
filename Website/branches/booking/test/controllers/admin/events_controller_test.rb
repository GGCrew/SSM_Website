require 'test_helper'

class Admin::EventsControllerTest < ActionController::TestCase
  setup do
    @admin_event = admin_events(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:admin_events)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create admin_event" do
    assert_difference('Admin::Event.count') do
      post :create, admin_event: { booking_status_id: @admin_event.booking_status_id, bride_first_name: @admin_event.bride_first_name, bride_last_name: @admin_event.bride_last_name, client_id: @admin_event.client_id, contract_status_id: @admin_event.contract_status_id, end: @admin_event.end, event_name: @admin_event.event_name, event_type_id: @admin_event.event_type_id, groom_first_name: @admin_event.groom_first_name, groom_last_name: @admin_event.groom_last_name, location_id: @admin_event.location_id, number_of_cameras: @admin_event.number_of_cameras, payment_status_id: @admin_event.payment_status_id, photo_media_id: @admin_event.photo_media_id, placeholder_times: @admin_event.placeholder_times, start: @admin_event.start }
    end

    assert_redirected_to admin_event_path(assigns(:admin_event))
  end

  test "should show admin_event" do
    get :show, id: @admin_event
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @admin_event
    assert_response :success
  end

  test "should update admin_event" do
    patch :update, id: @admin_event, admin_event: { booking_status_id: @admin_event.booking_status_id, bride_first_name: @admin_event.bride_first_name, bride_last_name: @admin_event.bride_last_name, client_id: @admin_event.client_id, contract_status_id: @admin_event.contract_status_id, end: @admin_event.end, event_name: @admin_event.event_name, event_type_id: @admin_event.event_type_id, groom_first_name: @admin_event.groom_first_name, groom_last_name: @admin_event.groom_last_name, location_id: @admin_event.location_id, number_of_cameras: @admin_event.number_of_cameras, payment_status_id: @admin_event.payment_status_id, photo_media_id: @admin_event.photo_media_id, placeholder_times: @admin_event.placeholder_times, start: @admin_event.start }
    assert_redirected_to admin_event_path(assigns(:admin_event))
  end

  test "should destroy admin_event" do
    assert_difference('Admin::Event.count', -1) do
      delete :destroy, id: @admin_event
    end

    assert_redirected_to admin_events_path
  end
end
