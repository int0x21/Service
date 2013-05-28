require 'test_helper'

class RmaNotesControllerTest < ActionController::TestCase
  setup do
    @rma_note = rma_notes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:rma_notes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create rma_note" do
    assert_difference('RmaNote.count') do
      post :create, rma_note: { note: @rma_note.note, user: @rma_note.user }
    end

    assert_redirected_to rma_note_path(assigns(:rma_note))
  end

  test "should show rma_note" do
    get :show, id: @rma_note
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @rma_note
    assert_response :success
  end

  test "should update rma_note" do
    patch :update, id: @rma_note, rma_note: { note: @rma_note.note, user: @rma_note.user }
    assert_redirected_to rma_note_path(assigns(:rma_note))
  end

  test "should destroy rma_note" do
    assert_difference('RmaNote.count', -1) do
      delete :destroy, id: @rma_note
    end

    assert_redirected_to rma_notes_path
  end
end
