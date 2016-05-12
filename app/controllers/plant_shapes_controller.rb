class PlantShapesController < ApplicationController
  before_action :set_plant_shape, only: [:show, :edit, :update, :destroy]

  # GET /plant_shapes
  # GET /plant_shapes.json
  def index
    @plant_shapes = PlantShape.all
  end

  # GET /plant_shapes/1
  # GET /plant_shapes/1.json
  def show
  end

  # GET /plant_shapes/new
  def new
    @plant_shape = PlantShape.new
    @plant = Plant.find_by_farsi_name(params[:plant])
  end

  # GET /plant_shapes/1/edit
  def edit
    @plant = Plant.find_by_farsi_name(params[:plant])
  end

  # POST /plant_shapes
  # POST /plant_shapes.json
  def create
    @plant_shape = PlantShape.new(plant_shape_params)

    respond_to do |format|
      if @plant_shape.save
        format.html { redirect_to edit_plant_path(@plant_shape.plant) , notice: 'Plant shape was successfully created.' }
        format.json { render :show, status: :created, location: @plant_shape }
      else
        format.html { render :new }
        format.json { render json: @plant_shape.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /plant_shapes/1
  # PATCH/PUT /plant_shapes/1.json
  def update
    respond_to do |format|
      if @plant_shape.update(plant_shape_params)
        format.html { redirect_to edit_plant_path(@plant_shape.plant), notice: 'Plant shape was successfully updated.' }
        format.json { render :show, status: :ok, location: @plant_shape }
      else
        format.html { render :edit }
        format.json { render json: @plant_shape.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /plant_shapes/1
  # DELETE /plant_shapes/1.json
  def destroy
    @plant_shape.destroy
    respond_to do |format|
      format.html { redirect_to :back , notice: 'Plant shape was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_plant_shape
      @plant_shape = PlantShape.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def plant_shape_params
      params.require(:plant_shape).permit(:plant_id, :leaf_shape_id, :leaf_color_id, :physical_structure_id, :bloom_color_id)
    end
end
