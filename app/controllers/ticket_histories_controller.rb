class TicketHistoriesController < ApplicationController
  # GET /ticket_histories
  # GET /ticket_histories.xml
  def index
    @ticket_histories = TicketHistory.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @ticket_histories }
    end
  end

  # GET /ticket_histories/1
  # GET /ticket_histories/1.xml
  def show
    @ticket_history = TicketHistory.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @ticket_history }
    end
  end

  # GET /ticket_histories/new
  # GET /ticket_histories/new.xml
  def new
    @ticket_history = TicketHistory.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @ticket_history }
    end
  end

  # GET /ticket_histories/1/edit
  def edit
    @ticket_history = TicketHistory.find(params[:id])
  end

  # POST /ticket_histories
  # POST /ticket_histories.xml
  def create
    @ticket_history = TicketHistory.new(params[:ticket_history])

    respond_to do |format|
      if @ticket_history.save
        flash[:notice] = 'TicketHistory was successfully created.'
        format.html { redirect_to(@ticket_history) }
        format.xml  { render :xml => @ticket_history, :status => :created, :location => @ticket_history }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @ticket_history.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /ticket_histories/1
  # PUT /ticket_histories/1.xml
  def update
    @ticket_history = TicketHistory.find(params[:id])

    respond_to do |format|
      if @ticket_history.update_attributes(params[:ticket_history])
        flash[:notice] = 'TicketHistory was successfully updated.'
        format.html { redirect_to(@ticket_history) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @ticket_history.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /ticket_histories/1
  # DELETE /ticket_histories/1.xml
  def destroy
    @ticket_history = TicketHistory.find(params[:id])
    @ticket_history.destroy

    respond_to do |format|
      format.html { redirect_to(ticket_histories_url) }
      format.xml  { head :ok }
    end
  end
end
