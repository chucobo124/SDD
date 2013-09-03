class PersonalInformationsController < ApplicationController
  # GET /personal_informations
  # GET /personal_informations.json
    before_filter :authenticate_user!
  def index
    @personal_informations = PersonalInformation.by_user(current_user)
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @personal_informations }
    end
  end

  # GET /personal_informations/1
  # GET /personal_informations/1.json
  def show
    @personal_information = PersonalInformation.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @personal_information }
    end
  end

  # GET /personal_informations/new
  # GET /personal_informations/new.json
  def new
    @personal_information = PersonalInformation.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @personal_information }
    end
  end

  # GET /personal_informations/1/edit
  def edit
    @personal_information = PersonalInformation.find(params[:id])
  end

  # POST /personal_informations
  # POST /personal_informations.json
  def create
    @personal_information = PersonalInformation.new(params[:personal_information])

    respond_to do |format|
      if @personal_information.save
        format.html { redirect_to @personal_information, notice: 'Personal information was successfully created.' }
        format.json { render json: @personal_information, status: :created, location: @personal_information }
      else
        format.html { render action: "new" }
        format.json { render json: @personal_information.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /personal_informations/1
  # PUT /personal_informations/1.json
  def update
    @personal_information = PersonalInformation.find(params[:id])

    respond_to do |format|
      if @personal_information.update_attributes(params[:personal_information])
        format.html { redirect_to @personal_information, notice: 'Personal information was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @personal_information.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /personal_informations/1
  # DELETE /personal_informations/1.json
  def destroy
    @personal_information = PersonalInformation.find(params[:id])
    @personal_information.destroy

    respond_to do |format|
      format.html { redirect_to personal_informations_url }
      format.json { head :no_content }
    end
  end
end
