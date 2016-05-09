class BloomColorsController < ApplicationController
  before_action :set_bloom_color, only: [:show, :edit, :update, :destroy]

  # GET /bloom_colors
  # GET /bloom_colors.json
  def index
    @bloom_colors = BloomColor.all
  end

  # GET /bloom_colors/1
  # GET /bloom_colors/1.json
  def show
  end

  # GET /bloom_colors/new
  def new
    @bloom_color = BloomColor.new
  end

  # GET /bloom_colors/1/edit
  def edit
  end

  # POST /bloom_colors
  # POST /bloom_colors.json
  def create
    @bloom_color = BloomColor.new(bloom_color_params)

    respond_to do |format|
      if @bloom_color.save
        format.html { redirect_to @bloom_color, notice: 'Bloom color was successfully created.' }
        format.json { render :show, status: :created, location: @bloom_color }
      else
        format.html { render :new }
        format.json { render json: @bloom_color.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bloom_colors/1
  # PATCH/PUT /bloom_colors/1.json
  def update
    respond_to do |format|
      if @bloom_color.update(bloom_color_params)
        format.html { redirect_to @bloom_color, notice: 'Bloom color was successfully updated.' }
        format.json { render :show, status: :ok, location: @bloom_color }
      else
        format.html { render :edit }
        format.json { render json: @bloom_color.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bloom_colors/1
  # DELETE /bloom_colors/1.json
  def destroy
    @bloom_color.destroy
    respond_to do |format|
      format.html { redirect_to bloom_colors_url, notice: 'Bloom color was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bloom_color
      @bloom_color = BloomColor.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bloom_color_params
      params.require(:bloom_color).permit(:name, :avatar)
    end
end
