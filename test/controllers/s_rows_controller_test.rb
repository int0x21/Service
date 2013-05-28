require 'test_helper'

class SRowsControllerTest < ActionController::TestCase
  setup do
    @s_row = s_rows(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:s_rows)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create s_row" do
    assert_difference('SRow.count') do
      post :create, s_row: { PULAGER_ID: @s_row.PULAGER_ID, action: @s_row.action, artname: @s_row.artname, rma_ID: @s_row.rma_ID, tmech: @s_row.tmech, tprod: @s_row.tprod, tprot: @s_row.tprot, ttest: @s_row.ttest, warranty: @s_row.warranty }
    end

    assert_redirected_to s_row_path(assigns(:s_row))
  end

  test "should show s_row" do
    get :show, id: @s_row
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @s_row
    assert_response :success
  end

  test "should update s_row" do
    patch :update, id: @s_row, s_row: { PULAGER_ID: @s_row.PULAGER_ID, action: @s_row.action, artname: @s_row.artname, rma_ID: @s_row.rma_ID, tmech: @s_row.tmech, tprod: @s_row.tprod, tprot: @s_row.tprot, ttest: @s_row.ttest, warranty: @s_row.warranty }
    assert_redirected_to s_row_path(assigns(:s_row))
  end

  test "should destroy s_row" do
    assert_difference('SRow.count', -1) do
      delete :destroy, id: @s_row
    end

    assert_redirected_to s_rows_path
  end
end
