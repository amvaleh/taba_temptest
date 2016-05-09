class PhysicalStructuresController < ApplicationController
  before_action :set_physical_structure, only: [:show, :edit, :update, :destroy]

  # GET /physical_structures
  # GET /physical_structures.json
  def index
    @physical_structures = PhysicalStructure.all
  end

  # GET /physical_structures/1
  # GET /physical_structures/1.json
  def show
  end

  # GET /physical_structures/new
  def new
    @physical_structure = PhysicalStructure.new
  end

  # GET /physical_structures/1/edit
  def edit
  end

  # POST /physical_structures
  # POST /physical_structures.json
  def create
    @physical_structure = PhysicalStructure.new(physical_structure_params)

    respond_to do |format|
      if @physical_structure.save
        format.html { redirect_to @physical_structure, notice: 'Physical structure was successfully created.' }
        format.json { render :show, status: :created, location: @physical_structure }
      else
        format.html { render :new }
        format.json { render json: @physical_structure.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /physical_structures/1
  # PATCH/PUT /physical_structures/1.json
  def update
    respond_to do |format|
      if @physical_structure.update(physical_structure_params)
        format.html { redirect_to @physical_structure, notice: 'Physical structure was successfully updated.' }
        format.json { render :show, status: :ok, location: @physical_structure }
      else
        format.html { render :edit }
        format.json { render json: @physical_structure.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /physical_structures/1
  # DELETE /physical_structures/1.json
  def destroy
    @physical_structure.destroy
    respond_to do |format|
      format.html { redirect_to physical_structures_url, notice: 'Physical structure was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_physical_structure
      @physical_structure = PhysicalStructure.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def physical_structure_params
      params.require(:physical_structure).permit(:name, :avatar)
    end
end
