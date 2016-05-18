class PlantLeafShapesController < ApplicationController
  before_action :set_plant_leaf_shape, only: [:show, :edit, :update, :destroy]

  # GET /plant_leaf_shapes
  # GET /plant_leaf_shapes.json
  def index
    @plant_leaf_shapes = PlantLeafShape.all
  end

  # GET /plant_leaf_shapes/1
  # GET /plant_leaf_shapes/1.json
  def show
  end

  # GET /plant_leaf_shapes/new
  def new
    @plant_leaf_shape = PlantLeafShape.new
  end

  # GET /plant_leaf_shapes/1/edit
  def edit
  end

  # POST /plant_leaf_shapes
  # POST /plant_leaf_shapes.json
  def create
    @plant_leaf_shape = PlantLeafShape.new(plant_leaf_shape_params)

    respond_to do |format|
      if @plant_leaf_shape.save
        format.html { redirect_to edit_plant_path(@plant_leaf_shape.plant) , notice: 'Plant leaf shape was successfully created.' }
        format.json { render :show, status: :created, location: @plant_leaf_shape }
      else
        format.html { render :new }
        format.json { render json: @plant_leaf_shape.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /plant_leaf_shapes/1
  # PATCH/PUT /plant_leaf_shapes/1.json
  def update
    respond_to do |format|
      if @plant_leaf_shape.update(plant_leaf_shape_params)
        format.html { redirect_to edit_plant_path(@plant_leaf_shape.plant) , notice: 'Plant leaf shape was successfully updated.' }
        format.json { render :show, status: :ok, location: @plant_leaf_shape }
      else
        format.html { render :edit }
        format.json { render json: @plant_leaf_shape.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /plant_leaf_shapes/1
  # DELETE /plant_leaf_shapes/1.json
  def destroy
    @plant_leaf_shape.destroy
    respond_to do |format|
      format.html { redirect_to :back, notice: 'Plant leaf shape was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_plant_leaf_shape
      @plant_leaf_shape = PlantLeafShape.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def plant_leaf_shape_params
      params.require(:plant_leaf_shape).permit(:plant_id, :leaf_shape_id)
    end
end
