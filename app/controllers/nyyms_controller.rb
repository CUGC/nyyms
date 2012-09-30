class NyymsController < ApplicationController
  # GET /nyyms
  # GET /nyyms.json
  def index
    @nyyms = Nyym.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @nyyms }
    end
  end

  # GET /nyyms/1
  # GET /nyyms/1.json
  def show
    @nyym = Nyym.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @nyym }
    end
  end

  # GET /nyyms/new
  # GET /nyyms/new.json
  def new
    @nyym = Nyym.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @nyym }
    end
  end

  # GET /nyyms/1/edit
  def edit
    @nyym = Nyym.find(params[:id])
  end

  # POST /nyyms
  # POST /nyyms.json
  def create
    @nyym = Nyym.new(params[:nyym])

    respond_to do |format|
      if @nyym.save
        
        NyymMailer.send_signup_confirmations_for_independent_signup(@nyym)
        
        format.html { redirect_to root_path, :notice => 'Successfully registered. Email confirmations have been sent.' }
        format.json { render :json => @nyym, :status => :created, :location => @nyym }
      else
        format.html { render :action => "new" }
        format.json { render :json => @nyym.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /nyyms/1
  # PUT /nyyms/1.json
  def update
    @nyym = Nyym.find(params[:id])

    respond_to do |format|
      if @nyym.update_attributes(params[:nyym])
        format.html { redirect_to @nyym, :notice => 'Nyym was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @nyym.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /nyyms/1
  # DELETE /nyyms/1.json
  def destroy
    @nyym = Nyym.find(params[:id])
    @nyym.destroy

    respond_to do |format|
      format.html { redirect_to nyyms_url }
      format.json { head :no_content }
    end
  end
  
  # GET /mp3s
  def mp3s
  end
end
