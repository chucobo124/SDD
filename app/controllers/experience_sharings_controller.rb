class ExperienceSharingsController < ApplicationController
  # GET /experience_sharings
  # GET /experience_sharings.json
  before_filter :authenticate_user!
  def index
    @experience_sharings = ExperienceSharing.by_user(current_user)
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @experience_sharings }
    end
  end

  # GET /experience_sharings/1
  # GET /experience_sharings/1.json
  def show
    @experience_sharing = ExperienceSharing.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @experience_sharing }
    end
  end

  # GET /experience_sharings/new
  # GET /experience_sharings/new.json
  def new
    @experience_sharing = ExperienceSharing.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @experience_sharing }
    end
  end

  # GET /experience_sharings/1/edit
  def edit
    @experience_sharing = ExperienceSharing.find(params[:id])
  end

  # POST /experience_sharings
  # POST /experience_sharings.json
  def create
    @experience_sharing = ExperienceSharing.new(params[:experience_sharing]) # <=this is views experience_sharing

    respond_to do |format|
      if @experience_sharing.save
        format.html { redirect_to @experience_sharing, notice: 'Experience sharing was successfully created.' }
        format.json { render json: @experience_sharing, status: :created, location: @experience_sharing }
      else
        format.html { render action: "new" }
        format.json { render json: @experience_sharing.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /experience_sharings/1
  # PUT /experience_sharings/1.json
  def update
    @experience_sharing = ExperienceSharing.find(params[:id])

    respond_to do |format|
      if @experience_sharing.update_attributes(params[:experience_sharing])
        format.html { redirect_to @experience_sharing, notice: 'Experience sharing was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @experience_sharing.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /experience_sharings/1
  # DELETE /experience_sharings/1.json
  def destroy
    @experience_sharing = ExperienceSharing.find(params[:id])
    @experience_sharing.destroy

    respond_to do |format|
      format.html { redirect_to experience_sharings_url }
      format.json { head :no_content }
    end
  end
  
end
