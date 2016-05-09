class PlantPropagationsController < ApplicationController
  before_action :set_plant_propagation, only: [:show, :edit, :update, :destroy]

  # GET /plant_propagations
  # GET /plant_propagations.json
  def index
    @plant_propagations = PlantPropagation.all
  end

  # GET /plant_propagations/1
  # GET /plant_propagations/1.json
  def show
  end

  # GET /plant_propagations/new
  def new
    @plant_propagation = PlantPropagation.new
  end

  # GET /plant_propagations/1/edit
  def edit
  end

  # POST /plant_propagations
  # POST /plant_propagations.json
  def create
    @plant_propagation = PlantPropagation.new(plant_propagation_params)

    respond_to do |format|
      if @plant_propagation.save
        format.html { redirect_to @plant_propagation, notice: 'Plant propagation was successfully created.' }
        format.json { render :show, status: :created, location: @plant_propagation }
      else
        format.html { render :new }
        format.json { render json: @plant_propagation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /plant_propagations/1
  # PATCH/PUT /plant_propagations/1.json
  def update
    respond_to do |format|
      if @plant_propagation.update(plant_propagation_params)
        format.html { redirect_to @plant_propagation, notice: 'Plant propagation was successfully updated.' }
        format.json { render :show, status: :ok, location: @plant_propagation }
      else
        format.html { render :edit }
        format.json { render json: @plant_propagation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /plant_propagations/1
  # DELETE /plant_propagations/1.json
  def destroy
    @plant_propagation.destroy
    respond_to do |format|
      format.html { redirect_to :back , notice: 'Plant propagation was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_plant_propagation
      @plant_propagation = PlantPropagation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def plant_propagation_params
      params.require(:plant_propagation).permit(:plant_id, :propagation_id)
    end
end
