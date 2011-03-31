class SavingsController < ApplicationController
  # GET /savings
  # GET /savings.xml
  def index
    @savings = Saving.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @savings }
    end
  end

  # GET /savings/1
  # GET /savings/1.xml
  def show
    @saving = Saving.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @saving }
    end
  end

  # GET /savings/new
  # GET /savings/new.xml
  def new
    @saving = Saving.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @saving }
    end
  end

  # GET /savings/1/edit
  def edit
    @saving = Saving.find(params[:id])
  end

  # POST /savings
  # POST /savings.xml
  def create
    @saving = Saving.new(params[:saving])

    respond_to do |format|
      if @saving.save
        format.html { redirect_to(@saving, :notice => 'Saving was successfully created.') }
        format.xml  { render :xml => @saving, :status => :created, :location => @saving }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @saving.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /savings/1
  # PUT /savings/1.xml
  def update
    @saving = Saving.find(params[:id])

    respond_to do |format|
      if @saving.update_attributes(params[:saving])
        format.html { redirect_to(@saving, :notice => 'Saving was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @saving.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /savings/1
  # DELETE /savings/1.xml
  def destroy
    @saving = Saving.find(params[:id])
    @saving.destroy

    respond_to do |format|
      format.html { redirect_to(savings_url) }
      format.xml  { head :ok }
    end
  end
end
