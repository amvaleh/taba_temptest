class PlanterGalleriesController < ApplicationController
  before_action :set_planter_gallery, only: [:show, :edit, :update, :destroy]

  # GET /planter_galleries
  # GET /planter_galleries.json
  def index
    @planter_galleries = PlanterGallery.all
  end

  # GET /planter_galleries/1
  # GET /planter_galleries/1.json
  def show
  end

  # GET /planter_galleries/new
  def new
    @planter_gallery = PlanterGallery.new
  end

  # GET /planter_galleries/1/edit
  def edit
  end

  # POST /planter_galleries
  # POST /planter_galleries.json
  def create
    @planter_gallery = PlanterGallery.new(planter_gallery_params)

    respond_to do |format|
      if @planter_gallery.save
        format.html { redirect_to @planter_gallery, notice: 'Planter gallery was successfully created.' }
        format.json { render :show, status: :created, location: @planter_gallery }
      else
        format.html { render :new }
        format.json { render json: @planter_gallery.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /planter_galleries/1
  # PATCH/PUT /planter_galleries/1.json
  def update
    respond_to do |format|
      if @planter_gallery.update(planter_gallery_params)
        format.html { redirect_to @planter_gallery.planter , notice: 'Planter gallery was successfully updated.' }
        format.json { render :show, status: :ok, location: @planter_gallery }
      else
        format.html { render :edit }
        format.json { render json: @planter_gallery.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /planter_galleries/1
  # DELETE /planter_galleries/1.json
  def destroy
    planter = @planter_gallery.planter
    @planter_gallery.destroy
    respond_to do |format|
      format.html { redirect_to edit_planter_path(planter), notice: 'Planter gallery was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_planter_gallery
      @planter_gallery = PlanterGallery.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def planter_gallery_params
      params.require(:planter_gallery).permit(:planter_id, :avatar)
    end
end
