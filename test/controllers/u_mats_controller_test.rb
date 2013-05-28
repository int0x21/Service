require 'test_helper'

class UMatsControllerTest < ActionController::TestCase
  setup do
    @u_mat = u_mats(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:u_mats)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create u_mat" do
    assert_difference('UMat.count') do
      post :create, u_mat: { PULAGER_ID: @u_mat.PULAGER_ID, PULAGER_Name: @u_mat.PULAGER_Name, unit_ID: @u_mat.unit_ID }
    end

    assert_redirected_to u_mat_path(assigns(:u_mat))
  end

  test "should show u_mat" do
    get :show, id: @u_mat
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @u_mat
    assert_response :success
  end

  test "should update u_mat" do
    patch :update, id: @u_mat, u_mat: { PULAGER_ID: @u_mat.PULAGER_ID, PULAGER_Name: @u_mat.PULAGER_Name, unit_ID: @u_mat.unit_ID }
    assert_redirected_to u_mat_path(assigns(:u_mat))
  end

  test "should destroy u_mat" do
    assert_difference('UMat.count', -1) do
      delete :destroy, id: @u_mat
    end

    assert_redirected_to u_mats_path
  end
end
