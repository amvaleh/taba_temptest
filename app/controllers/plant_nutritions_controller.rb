class PlantNutritionsController < ApplicationController
  before_action :set_plant_nutrition, only: [:show, :edit, :update, :destroy]

  # GET /plant_nutritions
  # GET /plant_nutritions.json
  def index
    @plant_nutritions = PlantNutrition.all
  end

  # GET /plant_nutritions/1
  # GET /plant_nutritions/1.json
  def show
  end

  # GET /plant_nutritions/new
  def new
    @plant_nutrition = PlantNutrition.new
    @plant = Plant.find_by_farsi_name(params[:plant])
  end

  # GET /plant_nutritions/1/edit
  def edit
  end

  # POST /plant_nutritions
  # POST /plant_nutritions.json
  def create
    @plant_nutrition = PlantNutrition.new(plant_nutrition_params)

    respond_to do |format|
      if @plant_nutrition.save
        format.html { redirect_to edit_plant_path(@plant_nutrition.plant) , notice: 'Plant nutrition was successfully created.' }
        format.json { render :show, status: :created, location: @plant_nutrition }
      else
        format.html { render :new }
        format.json { render json: @plant_nutrition.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /plant_nutritions/1
  # PATCH/PUT /plant_nutritions/1.json
  def update
    respond_to do |format|
      if @plant_nutrition.update(plant_nutrition_params)
        format.html { redirect_to edit_plant_path(@plant_nutrition.plant), notice: 'Plant nutrition was successfully updated.' }
        format.json { render :show, status: :ok, location: @plant_nutrition }
      else
        format.html { render :edit }
        format.json { render json: @plant_nutrition.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /plant_nutritions/1
  # DELETE /plant_nutritions/1.json
  def destroy
    @plant_nutrition.destroy
    respond_to do |format|
      format.html { redirect_to :back , notice: 'Plant nutrition was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_plant_nutrition
      @plant_nutrition = PlantNutrition.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def plant_nutrition_params
      params.require(:plant_nutrition).permit(:nutrition_id, :plant_id, :time_space, :time, :season_id )
    end
end
