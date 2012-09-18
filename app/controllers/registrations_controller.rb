class RegistrationsController < ApplicationController
  # GET /registrations
  # GET /registrations.json
  def index
    @registrations = Registration.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @registrations }
    end
  end

  # GET /registrations/1
  # GET /registrations/1.json
  def show
    @registration = Registration.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @registration }
    end
  end

  # GET /registrations/new
  # GET /registrations/new.json
  def new
    @registration = Registration.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @registration }
    end
  end

  # GET /registrations/1/edit
  def edit
    @registration = Registration.find(params[:id])
  end

  # POST /registrations
  # POST /registrations.json
  def create
    @registration = Registration.new(params[:registration])
    @registration.students_names.gsub! /(\r?\n)|\r/, $/
    
    respond_to do |format|
      if @registration.save
        
        @nyyms = []
        @registration.students_names.split("\n").each do |student_name|
          @nyym = Nyym.new
          @nyym.student_name = student_name
          @nyym.teacher_name = @registration.name
          @nyym.teacher_email = @registration.email
          @nyym.school_name = @registration.school_name
          @nyym.school_address = @registration.school_address
          @nyym.save
          @nyyms << @nyym
        end
        
        NyymMailer.send_signup_confirmations_for_bulk_signup(@registration)
        
        format.html { redirect_to @registration, :notice => 'Registration was successfully created.' }
        format.json { render :json => @registration, :status => :created, :location => @registration }
      else
        format.html { render :action => "new" }
        format.json { render :json => @registration.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /registrations/1
  # PUT /registrations/1.json
  def update
    @registration = Registration.find(params[:id])

    respond_to do |format|
      if @registration.update_attributes(params[:registration])
        format.html { redirect_to @registration, :notice => 'Registration was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @registration.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /registrations/1
  # DELETE /registrations/1.json
  def destroy
    @registration = Registration.find(params[:id])
    @registration.destroy

    respond_to do |format|
      format.html { redirect_to registrations_url }
      format.json { head :no_content }
    end
  end
end
