require 'test_helper'

class RmasControllerTest < ActionController::TestCase
  setup do
    @rma = rmas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:rmas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create rma" do
    assert_difference('Rma.count') do
      post :create, rma: { PUFIRADR_AID: @rma.PUFIRADR_AID, PUFIRMA_ID: @rma.PUFIRMA_ID, action: @rma.action, status: @rma.status, tmech: @rma.tmech, tprod: @rma.tprod, tprot: @rma.tprot, ttest: @rma.ttest, user: @rma.user, warranty: @rma.warranty }
    end

    assert_redirected_to rma_path(assigns(:rma))
  end

  test "should show rma" do
    get :show, id: @rma
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @rma
    assert_response :success
  end

  test "should update rma" do
    patch :update, id: @rma, rma: { PUFIRADR_AID: @rma.PUFIRADR_AID, PUFIRMA_ID: @rma.PUFIRMA_ID, action: @rma.action, status: @rma.status, tmech: @rma.tmech, tprod: @rma.tprod, tprot: @rma.tprot, ttest: @rma.ttest, user: @rma.user, warranty: @rma.warranty }
    assert_redirected_to rma_path(assigns(:rma))
  end

  test "should destroy rma" do
    assert_difference('Rma.count', -1) do
      delete :destroy, id: @rma
    end

    assert_redirected_to rmas_path
  end
end
