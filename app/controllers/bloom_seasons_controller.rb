class BloomSeasonsController < ApplicationController
  before_action :set_bloom_season, only: [:show, :edit, :update, :destroy]

  # GET /bloom_seasons
  # GET /bloom_seasons.json
  def index
    @bloom_seasons = BloomSeason.all
  end

  # GET /bloom_seasons/1
  # GET /bloom_seasons/1.json
  def show
  end

  # GET /bloom_seasons/new
  def new
    @bloom_season = BloomSeason.new
    @plant = Plant.find_by_farsi_name params[:plant]
  end

  # GET /bloom_seasons/1/edit
  def edit
    @plant = Plant.find_by_farsi_name params[:plant]
    
  end

  # POST /bloom_seasons
  # POST /bloom_seasons.json
  def create
    @bloom_season = BloomSeason.new(bloom_season_params)

    respond_to do |format|
      if @bloom_season.save
        format.html { redirect_to edit_plant_path(@bloom_season.plant), notice: 'Bloom season was successfully created.' }
        format.json { render :show, status: :created, location: @bloom_season }
      else
        format.html { render :new }
        format.json { render json: @bloom_season.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bloom_seasons/1
  # PATCH/PUT /bloom_seasons/1.json
  def update
    respond_to do |format|
      if @bloom_season.update(bloom_season_params)
        format.html { redirect_to edit_plant_path(@bloom_season.plant), notice: 'Bloom season was successfully updated.' }
        format.json { render :show, status: :ok, location: @bloom_season }
      else
        format.html { render :edit }
        format.json { render json: @bloom_season.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bloom_seasons/1
  # DELETE /bloom_seasons/1.json
  def destroy
    @bloom_season.destroy
    respond_to do |format|
      format.html { redirect_to :back, notice: 'Bloom season was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bloom_season
      @bloom_season = BloomSeason.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bloom_season_params
      params.require(:bloom_season).permit(:name, :plant_id, :number)
    end
end
