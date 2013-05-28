require 'test_helper'

class RMatsControllerTest < ActionController::TestCase
  setup do
    @r_mat = r_mats(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:r_mats)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create r_mat" do
    assert_difference('RMat.count') do
      post :create, r_mat: { PULAGER_ID: @r_mat.PULAGER_ID, PULAGER_Name: @r_mat.PULAGER_Name, SRow_ID: @r_mat.SRow_ID }
    end

    assert_redirected_to r_mat_path(assigns(:r_mat))
  end

  test "should show r_mat" do
    get :show, id: @r_mat
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @r_mat
    assert_response :success
  end

  test "should update r_mat" do
    patch :update, id: @r_mat, r_mat: { PULAGER_ID: @r_mat.PULAGER_ID, PULAGER_Name: @r_mat.PULAGER_Name, SRow_ID: @r_mat.SRow_ID }
    assert_redirected_to r_mat_path(assigns(:r_mat))
  end

  test "should destroy r_mat" do
    assert_difference('RMat.count', -1) do
      delete :destroy, id: @r_mat
    end

    assert_redirected_to r_mats_path
  end
end
