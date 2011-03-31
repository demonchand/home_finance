require 'test_helper'

class ExpensesControllerTest < ActionController::TestCase
  setup do
    @expense = Factory.attributes_for(:expense)
    sign_in Factory(:user)
     #get :index
  end
  context "testing a index action" do
    setup { get :index }
    should assign_to(:expenses).with(@expense)
    should_not assign_to(:expense).with(nil)
    should respond_with(:success)
    should render_template(:index)
  end

  context "test show action" do
    setup { get :show, :id => Factory(:expense).id }
    should respond_with(:success)
    should render_template(:show)
    should render_with_layout :application
    #should respond_with_content_type :xml
  end

  context "test new action" do
    setup { get :new }
    should render_template :new
    should respond_with :success
    should render_with_layout :application
  end

  context "test editing action" do
    setup { get :edit, :id => Factory(:expense).id }
    should respond_with :success
    should render_template :edit
  end

  context "testing a create action" do
    setup { post :create, :expense => @expense }
    should assign_to :expense
    should respond_with :redirect
    #should_redirect_to("index page"){expense_path(assigns(:expense))}
    should redirect_to("index page"){expense_path(assigns(:expense))}
    should set_the_flash.to(:notice => "Expense was successfully created")
  end

  context "test a update action" do
    setup { put :update, :id => Factory(:expense).id, :expense => { :description => "It is just used for update attributes" } }
    should redirect_to("show page"){ expense_path(assigns(:expense)) }
  end


  context "Destroy action" do
    setup { delete :destroy, :id => Factory(:expense).id }
    should respond_with :redirect
    should redirect_to(:action => "index")
#    should redirect_to("index page"){ expenses_url }
  end
end
