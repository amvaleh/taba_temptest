class LeafColorsController < ApplicationController
  before_action :set_leaf_color, only: [:show, :edit, :update, :destroy]

  # GET /leaf_colors
  # GET /leaf_colors.json
  def index
    @leaf_colors = LeafColor.all
  end

  # GET /leaf_colors/1
  # GET /leaf_colors/1.json
  def show
  end

  # GET /leaf_colors/new
  def new
    @leaf_color = LeafColor.new
  end

  # GET /leaf_colors/1/edit
  def edit
  end

  # POST /leaf_colors
  # POST /leaf_colors.json
  def create
    @leaf_color = LeafColor.new(leaf_color_params)

    respond_to do |format|
      if @leaf_color.save
        format.html { redirect_to @leaf_color, notice: 'Leaf color was successfully created.' }
        format.json { render :show, status: :created, location: @leaf_color }
      else
        format.html { render :new }
        format.json { render json: @leaf_color.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /leaf_colors/1
  # PATCH/PUT /leaf_colors/1.json
  def update
    respond_to do |format|
      if @leaf_color.update(leaf_color_params)
        format.html { redirect_to @leaf_color, notice: 'Leaf color was successfully updated.' }
        format.json { render :show, status: :ok, location: @leaf_color }
      else
        format.html { render :edit }
        format.json { render json: @leaf_color.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /leaf_colors/1
  # DELETE /leaf_colors/1.json
  def destroy
    @leaf_color.destroy
    respond_to do |format|
      format.html { redirect_to leaf_colors_url, notice: 'Leaf color was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_leaf_color
      @leaf_color = LeafColor.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def leaf_color_params
      params.require(:leaf_color).permit(:name, :avatar)
    end
end
