require 'test_helper'

class Admin::NotesControllerTest < ActionController::TestCase
  setup do
    @admin_note = admin_notes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:admin_notes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create admin_note" do
    assert_difference('Admin::Note.count') do
      post :create, admin_note: { note: @admin_note.note, resource_id: @admin_note.resource_id, resource_type: @admin_note.resource_type }
    end

    assert_redirected_to admin_note_path(assigns(:admin_note))
  end

  test "should show admin_note" do
    get :show, id: @admin_note
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @admin_note
    assert_response :success
  end

  test "should update admin_note" do
    patch :update, id: @admin_note, admin_note: { note: @admin_note.note, resource_id: @admin_note.resource_id, resource_type: @admin_note.resource_type }
    assert_redirected_to admin_note_path(assigns(:admin_note))
  end

  test "should destroy admin_note" do
    assert_difference('Admin::Note.count', -1) do
      delete :destroy, id: @admin_note
    end

    assert_redirected_to admin_notes_path
  end
end
