class SoilsController < ApplicationController
  before_action :set_soil, only: [:show, :edit, :update, :destroy]

  # GET /soils
  # GET /soils.json
  def index
    @soils = Soil.all
  end

  # GET /soils/1
  # GET /soils/1.json
  def show
  end

  # GET /soils/new
  def new
    @soil = Soil.new
  end

  # GET /soils/1/edit
  def edit
  end

  # POST /soils
  # POST /soils.json
  def create
    @soil = Soil.new(soil_params)

    respond_to do |format|
      if @soil.save
        format.html { redirect_to @soil, notice: 'Soil was successfully created.' }
        format.json { render :show, status: :created, location: @soil }
      else
        format.html { render :new }
        format.json { render json: @soil.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /soils/1
  # PATCH/PUT /soils/1.json
  def update
    respond_to do |format|
      if @soil.update(soil_params)
        format.html { redirect_to @soil, notice: 'Soil was successfully updated.' }
        format.json { render :show, status: :ok, location: @soil }
      else
        format.html { render :edit }
        format.json { render json: @soil.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /soils/1
  # DELETE /soils/1.json
  def destroy
    @soil.destroy
    respond_to do |format|
      format.html { redirect_to soils_url, notice: 'Soil was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_soil
      @soil = Soil.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def soil_params
      params.require(:soil).permit(:name, :explain, {avatars: []})
    end
end
