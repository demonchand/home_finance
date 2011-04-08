require 'test_helper'

class RepaymentsControllerTest < ActionController::TestCase
  setup do
    @repayment = repayments(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:repayments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create repayment" do
    assert_difference('Repayment.count') do
      post :create, :repayment => @repayment.attributes
    end

    assert_redirected_to repayment_path(assigns(:repayment))
  end

  test "should show repayment" do
    get :show, :id => @repayment.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @repayment.to_param
    assert_response :success
  end

  test "should update repayment" do
    put :update, :id => @repayment.to_param, :repayment => @repayment.attributes
    assert_redirected_to repayment_path(assigns(:repayment))
  end

  test "should destroy repayment" do
    assert_difference('Repayment.count', -1) do
      delete :destroy, :id => @repayment.to_param
    end

    assert_redirected_to repayments_path
  end
end
