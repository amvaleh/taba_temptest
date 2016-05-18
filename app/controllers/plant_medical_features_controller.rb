class PlantMedicalFeaturesController < ApplicationController
  before_action :set_plant_medical_feature, only: [:show, :edit, :update, :destroy]

  # GET /plant_medical_features
  # GET /plant_medical_features.json
  def index
    @plant_medical_features = PlantMedicalFeature.all
  end

  # GET /plant_medical_features/1
  # GET /plant_medical_features/1.json
  def show
  end

  # GET /plant_medical_features/new
  def new
    @plant_medical_feature = PlantMedicalFeature.new
  end

  # GET /plant_medical_features/1/edit
  def edit
  end

  # POST /plant_medical_features
  # POST /plant_medical_features.json
  def create
    @plant_medical_feature = PlantMedicalFeature.new(plant_medical_feature_params)

    respond_to do |format|
      if @plant_medical_feature.save
        format.html { redirect_to @plant_medical_feature, notice: 'Plant medical feature was successfully created.' }
        format.json { render :show, status: :created, location: @plant_medical_feature }
      else
        format.html { render :new }
        format.json { render json: @plant_medical_feature.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /plant_medical_features/1
  # PATCH/PUT /plant_medical_features/1.json
  def update
    respond_to do |format|
      if @plant_medical_feature.update(plant_medical_feature_params)
        format.html { redirect_to @plant_medical_feature, notice: 'Plant medical feature was successfully updated.' }
        format.json { render :show, status: :ok, location: @plant_medical_feature }
      else
        format.html { render :edit }
        format.json { render json: @plant_medical_feature.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /plant_medical_features/1
  # DELETE /plant_medical_features/1.json
  def destroy
    @plant_medical_feature.destroy
    respond_to do |format|
      format.html { redirect_to :back , notice: 'Plant medical feature was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_plant_medical_feature
      @plant_medical_feature = PlantMedicalFeature.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def plant_medical_feature_params
      params.require(:plant_medical_feature).permit(:plant_id, :medical_feature)
    end
end
