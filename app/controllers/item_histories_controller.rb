class ItemHistoriesController < ApplicationController
  # GET /item_histories
  # GET /item_histories.xml
  def index
    @item_histories = ItemHistory.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @item_histories }
    end
  end

  # GET /item_histories/1
  # GET /item_histories/1.xml
  def show
    @item_history = ItemHistory.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @item_history }
    end
  end

  # GET /item_histories/new
  # GET /item_histories/new.xml
  def new
    @item_history = ItemHistory.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @item_history }
    end
  end

  # GET /item_histories/1/edit
  def edit
    @item_history = ItemHistory.find(params[:id])
  end

  # POST /item_histories
  # POST /item_histories.xml
  def create
    @item_history = ItemHistory.new(params[:item_history])

    respond_to do |format|
      if @item_history.save
        flash[:notice] = 'ItemHistory was successfully created.'
        format.html { redirect_to(@item_history) }
        format.xml  { render :xml => @item_history, :status => :created, :location => @item_history }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @item_history.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /item_histories/1
  # PUT /item_histories/1.xml
  def update
    @item_history = ItemHistory.find(params[:id])

    respond_to do |format|
      if @item_history.update_attributes(params[:item_history])
        flash[:notice] = 'ItemHistory was successfully updated.'
        format.html { redirect_to(@item_history) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @item_history.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /item_histories/1
  # DELETE /item_histories/1.xml
  def destroy
    @item_history = ItemHistory.find(params[:id])
    @item_history.destroy

    respond_to do |format|
      format.html { redirect_to(item_histories_url) }
      format.xml  { head :ok }
    end
  end
end

