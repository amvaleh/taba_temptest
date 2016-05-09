class PlantSoilsController < ApplicationController
  before_action :set_plant_soil, only: [:show, :edit, :update, :destroy]

  # GET /plant_soils
  # GET /plant_soils.json
  def index
    @plant_soils = PlantSoil.all
  end

  # GET /plant_soils/1
  # GET /plant_soils/1.json
  def show
  end

  # GET /plant_soils/new
  def new
    @plant_soil = PlantSoil.new
  end

  # GET /plant_soils/1/edit
  def edit
  end

  # POST /plant_soils
  # POST /plant_soils.json
  def create
    @plant_soil = PlantSoil.new(plant_soil_params)

    respond_to do |format|
      if @plant_soil.save
        format.html { redirect_to @plant_soil, notice: 'Plant soil was successfully created.' }
        format.json { render :show, status: :created, location: @plant_soil }
      else
        format.html { render :new }
        format.json { render json: @plant_soil.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /plant_soils/1
  # PATCH/PUT /plant_soils/1.json
  def update
    respond_to do |format|
      if @plant_soil.update(plant_soil_params)
        format.html { redirect_to @plant_soil, notice: 'Plant soil was successfully updated.' }
        format.json { render :show, status: :ok, location: @plant_soil }
      else
        format.html { render :edit }
        format.json { render json: @plant_soil.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /plant_soils/1
  # DELETE /plant_soils/1.json
  def destroy
    @plant_soil.destroy
    respond_to do |format|
      format.html { redirect_to :back , notice: 'Plant soil was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_plant_soil
      @plant_soil = PlantSoil.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def plant_soil_params
      params[:plant_soil]
    end
end
