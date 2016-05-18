class MedicalFeaturesController < ApplicationController
  before_action :set_medical_feature, only: [:show, :edit, :update, :destroy]

  # GET /medical_features
  # GET /medical_features.json
  def index
    @medical_features = MedicalFeature.all
  end

  # GET /medical_features/1
  # GET /medical_features/1.json
  def show
  end

  # GET /medical_features/new
  def new
    @medical_feature = MedicalFeature.new
  end

  # GET /medical_features/1/edit
  def edit
  end

  # POST /medical_features
  # POST /medical_features.json
  def create
    @medical_feature = MedicalFeature.new(medical_feature_params)

    respond_to do |format|
      if @medical_feature.save
        format.html { redirect_to @medical_feature, notice: 'Medical feature was successfully created.' }
        format.json { render :show, status: :created, location: @medical_feature }
      else
        format.html { render :new }
        format.json { render json: @medical_feature.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /medical_features/1
  # PATCH/PUT /medical_features/1.json
  def update
    respond_to do |format|
      if @medical_feature.update(medical_feature_params)
        format.html { redirect_to @medical_feature, notice: 'Medical feature was successfully updated.' }
        format.json { render :show, status: :ok, location: @medical_feature }
      else
        format.html { render :edit }
        format.json { render json: @medical_feature.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /medical_features/1
  # DELETE /medical_features/1.json
  def destroy
    @medical_feature.destroy
    respond_to do |format|
      format.html { redirect_to medical_features_url, notice: 'Medical feature was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_medical_feature
      @medical_feature = MedicalFeature.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def medical_feature_params
      params.require(:medical_feature).permit(:name, :description)
    end
end
