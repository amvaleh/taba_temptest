class PlantEpidemicsController < ApplicationController
  before_action :set_plant_epidemic, only: [:show, :edit, :update, :destroy]

  # GET /plant_epidemics
  # GET /plant_epidemics.json
  def index
    @plant_epidemics = PlantEpidemic.all
  end

  # GET /plant_epidemics/1
  # GET /plant_epidemics/1.json
  def show
  end

  # GET /plant_epidemics/new
  def new
    @plant_epidemic = PlantEpidemic.new
  end

  # GET /plant_epidemics/1/edit
  def edit
  end

  # POST /plant_epidemics
  # POST /plant_epidemics.json
  def create
    @plant_epidemic = PlantEpidemic.new(plant_epidemic_params)

    respond_to do |format|
      if @plant_epidemic.save
        format.html { redirect_to @plant_epidemic, notice: 'Plant epidemic was successfully created.' }
        format.json { render :show, status: :created, location: @plant_epidemic }
      else
        format.html { render :new }
        format.json { render json: @plant_epidemic.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /plant_epidemics/1
  # PATCH/PUT /plant_epidemics/1.json
  def update
    respond_to do |format|
      if @plant_epidemic.update(plant_epidemic_params)
        format.html { redirect_to @plant_epidemic, notice: 'Plant epidemic was successfully updated.' }
        format.json { render :show, status: :ok, location: @plant_epidemic }
      else
        format.html { render :edit }
        format.json { render json: @plant_epidemic.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /plant_epidemics/1
  # DELETE /plant_epidemics/1.json
  def destroy
    @plant_epidemic.destroy
    respond_to do |format|
      format.html { redirect_to :back , notice: 'Plant epidemic was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_plant_epidemic
      @plant_epidemic = PlantEpidemic.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def plant_epidemic_params
      params.require(:plant_epidemic).permit(:plant_id, :epidemic_id)
    end
end
