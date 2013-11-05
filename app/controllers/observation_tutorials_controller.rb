class ObservationTutorialsController < ApplicationController
  # GET /observation_tutorials
  # GET /observation_tutorials.json
  before_filter :authenticate_user!
  def index
    @observation_tutorials = ObservationTutorial.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @observation_tutorials }
    end
  end

  # GET /observation_tutorials/1
  # GET /observation_tutorials/1.json
  def show
    @observation_tutorial = ObservationTutorial.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @observation_tutorial }
    end
  end

  # GET /observation_tutorials/new
  # GET /observation_tutorials/new.json
  def new
    @observation_tutorial = ObservationTutorial.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @observation_tutorial }
    end
  end

  # GET /observation_tutorials/1/edit
  def edit
    @observation_tutorial = ObservationTutorial.find(params[:id])
  end

  # POST /observation_tutorials
  # POST /observation_tutorials.json
  def create
    @observation_tutorial = ObservationTutorial.new(params[:observation_tutorial])

    respond_to do |format|
      if @observation_tutorial.save
        format.html { redirect_to @observation_tutorial, notice: 'Observation tutorial was successfully created.' }
        format.json { render json: @observation_tutorial, status: :created, location: @observation_tutorial }
      else
        format.html { render action: "new" }
        format.json { render json: @observation_tutorial.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /observation_tutorials/1
  # PUT /observation_tutorials/1.json
  def update
    @observation_tutorial = ObservationTutorial.find(params[:id])

    respond_to do |format|
      if @observation_tutorial.update_attributes(params[:observation_tutorial])
        format.html { redirect_to @observation_tutorial, notice: 'Observation tutorial was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @observation_tutorial.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /observation_tutorials/1
  # DELETE /observation_tutorials/1.json
  def destroy
    @observation_tutorial = ObservationTutorial.find(params[:id])
    @observation_tutorial.destroy

    respond_to do |format|
      format.html { redirect_to observation_tutorials_url }
      format.json { head :no_content }
    end
  end
end
