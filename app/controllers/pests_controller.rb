class PestsController < ApplicationController
  before_action :set_pest, only: [:show, :edit, :update, :destroy]

  # GET /pests
  # GET /pests.json
  def index
    @pests = Pest.all
  end

  # GET /pests/1
  # GET /pests/1.json
  def show
  end

  # GET /pests/new
  def new
    @pest = Pest.new
  end

  # GET /pests/1/edit
  def edit
  end

  # POST /pests
  # POST /pests.json
  def create
    @pest = Pest.new(pest_params)

    respond_to do |format|
      if @pest.save
        format.html { redirect_to @pest, notice: 'Pest was successfully created.' }
        format.json { render :show, status: :created, location: @pest }
      else
        format.html { render :new }
        format.json { render json: @pest.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pests/1
  # PATCH/PUT /pests/1.json
  def update
    respond_to do |format|
      if @pest.update(pest_params)
        format.html { redirect_to @pest, notice: 'Pest was successfully updated.' }
        format.json { render :show, status: :ok, location: @pest }
      else
        format.html { render :edit }
        format.json { render json: @pest.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pests/1
  # DELETE /pests/1.json
  def destroy
    @pest.destroy
    respond_to do |format|
      format.html { redirect_to pests_url, notice: 'Pest was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pest
      @pest = Pest.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pest_params
      params.require(:pest).permit(:name, :cause, :treatment  , {avatars: []})
    end
end
