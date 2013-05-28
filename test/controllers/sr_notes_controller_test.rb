require 'test_helper'

class SrNotesControllerTest < ActionController::TestCase
  setup do
    @sr_note = sr_notes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sr_notes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sr_note" do
    assert_difference('SrNote.count') do
      post :create, sr_note: { note: @sr_note.note, user: @sr_note.user }
    end

    assert_redirected_to sr_note_path(assigns(:sr_note))
  end

  test "should show sr_note" do
    get :show, id: @sr_note
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sr_note
    assert_response :success
  end

  test "should update sr_note" do
    patch :update, id: @sr_note, sr_note: { note: @sr_note.note, user: @sr_note.user }
    assert_redirected_to sr_note_path(assigns(:sr_note))
  end

  test "should destroy sr_note" do
    assert_difference('SrNote.count', -1) do
      delete :destroy, id: @sr_note
    end

    assert_redirected_to sr_notes_path
  end
end
