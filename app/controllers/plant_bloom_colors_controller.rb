class PlantBloomColorsController < ApplicationController
  before_action :set_plant_bloom_color, only: [:show, :edit, :update, :destroy]

  # GET /plant_bloom_colors
  # GET /plant_bloom_colors.json
  def index
    @plant_bloom_colors = PlantBloomColor.all
  end

  # GET /plant_bloom_colors/1
  # GET /plant_bloom_colors/1.json
  def show
  end

  # GET /plant_bloom_colors/new
  def new
    @plant_bloom_color = PlantBloomColor.new
  end

  # GET /plant_bloom_colors/1/edit
  def edit
  end

  # POST /plant_bloom_colors
  # POST /plant_bloom_colors.json
  def create
    @plant_bloom_color = PlantBloomColor.new(plant_bloom_color_params)

    respond_to do |format|
      if @plant_bloom_color.save
        format.html { redirect_to @plant_bloom_color, notice: 'Plant bloom color was successfully created.' }
        format.json { render :show, status: :created, location: @plant_bloom_color }
      else
        format.html { render :new }
        format.json { render json: @plant_bloom_color.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /plant_bloom_colors/1
  # PATCH/PUT /plant_bloom_colors/1.json
  def update
    respond_to do |format|
      if @plant_bloom_color.update(plant_bloom_color_params)
        format.html { redirect_to @plant_bloom_color, notice: 'Plant bloom color was successfully updated.' }
        format.json { render :show, status: :ok, location: @plant_bloom_color }
      else
        format.html { render :edit }
        format.json { render json: @plant_bloom_color.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /plant_bloom_colors/1
  # DELETE /plant_bloom_colors/1.json
  def destroy
    @plant_bloom_color.destroy
    respond_to do |format|
      format.html { redirect_to :back , notice: 'Plant bloom color was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_plant_bloom_color
      @plant_bloom_color = PlantBloomColor.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def plant_bloom_color_params
      params.require(:plant_bloom_color).permit(:plant_id, :bloom_color_id)
    end
end
