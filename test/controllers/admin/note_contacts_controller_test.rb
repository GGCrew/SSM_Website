require 'test_helper'

class Admin::NoteContactsControllerTest < ActionController::TestCase
  setup do
    @admin_note_contact = admin_note_contacts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:admin_note_contacts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create admin_note_contact" do
    assert_difference('Admin::NoteContact.count') do
      post :create, admin_note_contact: { admin_note_id: @admin_note_contact.admin_note_id, contact_id: @admin_note_contact.contact_id }
    end

    assert_redirected_to admin_note_contact_path(assigns(:admin_note_contact))
  end

  test "should show admin_note_contact" do
    get :show, id: @admin_note_contact
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @admin_note_contact
    assert_response :success
  end

  test "should update admin_note_contact" do
    patch :update, id: @admin_note_contact, admin_note_contact: { admin_note_id: @admin_note_contact.admin_note_id, contact_id: @admin_note_contact.contact_id }
    assert_redirected_to admin_note_contact_path(assigns(:admin_note_contact))
  end

  test "should destroy admin_note_contact" do
    assert_difference('Admin::NoteContact.count', -1) do
      delete :destroy, id: @admin_note_contact
    end

    assert_redirected_to admin_note_contacts_path
  end
end
