class LeafShapesController < ApplicationController
  before_action :set_leaf_shape, only: [:show, :edit, :update, :destroy]

  # GET /leaf_shapes
  # GET /leaf_shapes.json
  def index
    @leaf_shapes = LeafShape.all
  end

  # GET /leaf_shapes/1
  # GET /leaf_shapes/1.json
  def show
  end

  # GET /leaf_shapes/new
  def new
    @leaf_shape = LeafShape.new
  end

  # GET /leaf_shapes/1/edit
  def edit
  end

  # POST /leaf_shapes
  # POST /leaf_shapes.json
  def create
    @leaf_shape = LeafShape.new(leaf_shape_params)

    respond_to do |format|
      if @leaf_shape.save
        format.html { redirect_to @leaf_shape, notice: 'Leaf shape was successfully created.' }
        format.json { render :show, status: :created, location: @leaf_shape }
      else
        format.html { render :new }
        format.json { render json: @leaf_shape.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /leaf_shapes/1
  # PATCH/PUT /leaf_shapes/1.json
  def update
    respond_to do |format|
      if @leaf_shape.update(leaf_shape_params)
        format.html { redirect_to @leaf_shape, notice: 'Leaf shape was successfully updated.' }
        format.json { render :show, status: :ok, location: @leaf_shape }
      else
        format.html { render :edit }
        format.json { render json: @leaf_shape.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /leaf_shapes/1
  # DELETE /leaf_shapes/1.json
  def destroy
    @leaf_shape.destroy
    respond_to do |format|
      format.html { redirect_to leaf_shapes_url, notice: 'Leaf shape was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_leaf_shape
      @leaf_shape = LeafShape.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def leaf_shape_params
      params.require(:leaf_shape).permit(:name, :avatar)
    end
end
