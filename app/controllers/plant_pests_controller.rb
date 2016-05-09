class PlantPestsController < ApplicationController
  before_action :set_plant_pest, only: [:show, :edit, :update, :destroy]

  # GET /plant_pests
  # GET /plant_pests.json
  def index
    @plant_pests = PlantPest.all
  end

  # GET /plant_pests/1
  # GET /plant_pests/1.json
  def show
  end

  # GET /plant_pests/new
  def new
    @plant_pest = PlantPest.new
  end

  # GET /plant_pests/1/edit
  def edit
  end

  # POST /plant_pests
  # POST /plant_pests.json
  def create
    @plant_pest = PlantPest.new(plant_pest_params)

    respond_to do |format|
      if @plant_pest.save
        format.html { redirect_to @plant_pest, notice: 'Plant pest was successfully created.' }
        format.json { render :show, status: :created, location: @plant_pest }
      else
        format.html { render :new }
        format.json { render json: @plant_pest.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /plant_pests/1
  # PATCH/PUT /plant_pests/1.json
  def update
    respond_to do |format|
      if @plant_pest.update(plant_pest_params)
        format.html { redirect_to @plant_pest, notice: 'Plant pest was successfully updated.' }
        format.json { render :show, status: :ok, location: @plant_pest }
      else
        format.html { render :edit }
        format.json { render json: @plant_pest.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /plant_pests/1
  # DELETE /plant_pests/1.json
  def destroy
    @plant_pest.destroy
    respond_to do |format|
      format.html { redirect_to :back , notice: 'Plant pest was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_plant_pest
      @plant_pest = PlantPest.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def plant_pest_params
      params.require(:plant_pest).permit(:plant_id, :pest_id)
    end
end
