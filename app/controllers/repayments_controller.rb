class RepaymentsController < ApplicationController
  # GET /repayments
  # GET /repayments.xml
  def index
    @repayments = Repayment.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @repayments }
    end
  end

  # GET /repayments/1
  # GET /repayments/1.xml
  def show
    @repayment = Repayment.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @repayment }
    end
  end

  # GET /repayments/new
  # GET /repayments/new.xml
  def new
    @repayment = Repayment.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @repayment }
    end
  end

  # GET /repayments/1/edit
  def edit
    @repayment = Repayment.find(params[:id])
  end

  # POST /repayments
  # POST /repayments.xml
  def create
    @repayment = Repayment.new(params[:repayment])

    respond_to do |format|
      if @repayment.save
        name1,name2,name3,name4 = "saving", "repayment", "To settle the loan amount", @repayment.repayment_amount
        go_and_sign_the_register(name1,name2,name3,name4)
        format.html { redirect_to(@repayment, :notice => 'Repayment was successfully created.') }
        format.xml  { render :xml => @repayment, :status => :created, :location => @repayment }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @repayment.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /repayments/1
  # PUT /repayments/1.xml
  def update
    @repayment = Repayment.find(params[:id])

    respond_to do |format|
      if @repayment.update_attributes(params[:repayment])
        format.html { redirect_to(@repayment, :notice => 'Repayment was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @repayment.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /repayments/1
  # DELETE /repayments/1.xml
  def destroy
    @repayment = Repayment.find(params[:id])
    @repayment.destroy

    respond_to do |format|
      format.html { redirect_to(repayments_url) }
      format.xml  { head :ok }
    end
  end
end
