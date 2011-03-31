require 'test_helper'

class SavingsControllerTest < ActionController::TestCase
  setup do
    @saving = Factory.build(:saving).attributes
    sign_in Factory(:user)
  end

  context "should get the index" do
    setup { get :index }

    should respond_with :success
    should render_template :index
    should assign_to :savings
    should render_with_layout :application
  end

  context "show action" do
    setup { get :show, :id => Factory(:saving).id }

    should respond_with :success
    should render_template :show
  end
  #setup do
  #  @saving = savings(:one)
  #end
  # 
  #test "should get index" do
  #  get :index
  #  assert_response :success
  #  assert_not_nil assigns(:savings)
  #end
  # 
  #test "should get new" do
  #  get :new
  #  assert_response :success
  #end
  # 
  #test "should create saving" do
  #  assert_difference('Saving.count') do
  #    post :create, :saving => @saving.attributes
  #  end
  # 
  #  assert_redirected_to saving_path(assigns(:saving))
  #end
  # 
  #test "should show saving" do
  #  get :show, :id => @saving.to_param
  #  assert_response :success
  #end
  # 
  #test "should get edit" do
  #  get :edit, :id => @saving.to_param
  #  assert_response :success
  #end
  # 
  #test "should update saving" do
  #  put :update, :id => @saving.to_param, :saving => @saving.attributes
  #  assert_redirected_to saving_path(assigns(:saving))
  #end
  # 
  #test "should destroy saving" do
  #  assert_difference('Saving.count', -1) do
  #    delete :destroy, :id => @saving.to_param
  #  end
  # 
  #  assert_redirected_to savings_path
  #end
end
