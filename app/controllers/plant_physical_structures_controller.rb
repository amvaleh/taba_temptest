class PlantPhysicalStructuresController < ApplicationController
  before_action :set_plant_physical_structure, only: [:show, :edit, :update, :destroy]

  # GET /plant_physical_structures
  # GET /plant_physical_structures.json
  def index
    @plant_physical_structures = PlantPhysicalStructure.all
  end

  # GET /plant_physical_structures/1
  # GET /plant_physical_structures/1.json
  def show
  end

  # GET /plant_physical_structures/new
  def new
    @plant_physical_structure = PlantPhysicalStructure.new
  end

  # GET /plant_physical_structures/1/edit
  def edit
  end

  # POST /plant_physical_structures
  # POST /plant_physical_structures.json
  def create
    @plant_physical_structure = PlantPhysicalStructure.new(plant_physical_structure_params)

    respond_to do |format|
      if @plant_physical_structure.save
        format.html { redirect_to @plant_physical_structure, notice: 'Plant physical structure was successfully created.' }
        format.json { render :show, status: :created, location: @plant_physical_structure }
      else
        format.html { render :new }
        format.json { render json: @plant_physical_structure.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /plant_physical_structures/1
  # PATCH/PUT /plant_physical_structures/1.json
  def update
    respond_to do |format|
      if @plant_physical_structure.update(plant_physical_structure_params)
        format.html { redirect_to @plant_physical_structure, notice: 'Plant physical structure was successfully updated.' }
        format.json { render :show, status: :ok, location: @plant_physical_structure }
      else
        format.html { render :edit }
        format.json { render json: @plant_physical_structure.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /plant_physical_structures/1
  # DELETE /plant_physical_structures/1.json
  def destroy
    @plant_physical_structure.destroy
    respond_to do |format|
      format.html { redirect_to :back, notice: 'Plant physical structure was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_plant_physical_structure
      @plant_physical_structure = PlantPhysicalStructure.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def plant_physical_structure_params
      params.require(:plant_physical_structure).permit(:plant_id, :physical_structure_id)
    end
end
