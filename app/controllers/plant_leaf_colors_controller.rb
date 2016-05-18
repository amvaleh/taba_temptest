class PlantLeafColorsController < ApplicationController
  before_action :set_plant_leaf_color, only: [:show, :edit, :update, :destroy]

  # GET /plant_leaf_colors
  # GET /plant_leaf_colors.json
  def index
    @plant_leaf_colors = PlantLeafColor.all
  end

  # GET /plant_leaf_colors/1
  # GET /plant_leaf_colors/1.json
  def show
  end

  # GET /plant_leaf_colors/new
  def new
    @plant_leaf_color = PlantLeafColor.new
  end

  # GET /plant_leaf_colors/1/edit
  def edit
  end

  # POST /plant_leaf_colors
  # POST /plant_leaf_colors.json
  def create
    @plant_leaf_color = PlantLeafColor.new(plant_leaf_color_params)

    respond_to do |format|
      if @plant_leaf_color.save
        format.html { redirect_to edit_plant_path(@plant_leaf_color.plant), notice: 'Plant leaf color was successfully created.' }
        format.json { render :show, status: :created, location: @plant_leaf_color }
      else
        format.html { render :new }
        format.json { render json: @plant_leaf_color.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /plant_leaf_colors/1
  # PATCH/PUT /plant_leaf_colors/1.json
  def update
    respond_to do |format|
      if @plant_leaf_color.update(plant_leaf_color_params)
        format.html { redirect_to edit_plant_path(@plant_leaf_color.plant) , notice: 'Plant leaf color was successfully updated.' }
        format.json { render :show, status: :ok, location: @plant_leaf_color }
      else
        format.html { render :edit }
        format.json { render json: @plant_leaf_color.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /plant_leaf_colors/1
  # DELETE /plant_leaf_colors/1.json
  def destroy
    @plant_leaf_color.destroy
    respond_to do |format|
      format.html { redirect_to :back , notice: 'Plant leaf color was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_plant_leaf_color
      @plant_leaf_color = PlantLeafColor.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def plant_leaf_color_params
      params.require(:plant_leaf_color).permit(:plant_id, :leaf_color_id)
    end
end
