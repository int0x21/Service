require 'test_helper'

class UNotesControllerTest < ActionController::TestCase
  setup do
    @u_note = u_notes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:u_notes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create u_note" do
    assert_difference('UNote.count') do
      post :create, u_note: { note: @u_note.note, user: @u_note.user }
    end

    assert_redirected_to u_note_path(assigns(:u_note))
  end

  test "should show u_note" do
    get :show, id: @u_note
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @u_note
    assert_response :success
  end

  test "should update u_note" do
    patch :update, id: @u_note, u_note: { note: @u_note.note, user: @u_note.user }
    assert_redirected_to u_note_path(assigns(:u_note))
  end

  test "should destroy u_note" do
    assert_difference('UNote.count', -1) do
      delete :destroy, id: @u_note
    end

    assert_redirected_to u_notes_path
  end
end
