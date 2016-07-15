class PlantsController < ApplicationController
  # before_action :set_plant, only: [:show, :edit, :update, :destroy]


    before_action :authenticate_user! , :except => [:show, :index,:find]

    after_action :verify_authorized, :except => [:index , :show, :follow , :unfollow,:import,:find,:destroy]

    before_action :set_plant, only: [:show, :edit, :update, :destroy, :follow , :unfollow]


      def find
        @plants = []
        Plant.all.each do |pl|
          if pl.farsi_name.start_with? params[:letter]
            @plants.push(pl)
          end
        end
      end

      def import
      puts "****************************************************"
      doc = Nokogiri::XML(File.open("plants.xml"))
      co = 1
        doc.css('طبقه_x0020_بندی_x0020_اطلاعات_x0020_گیاهان').each do |node|
          children = node.children
          plant = Planter.new(
            :id => co,
            :name => children.css('farsi_name').inner_text,
            :latin_name => children.css('latin_name').inner_text,
            :category => children.css('category').inner_text,
            :family => children.css('family').inner_text,
            :brief_desc => children.css('summary').inner_text,
            :explanation => children.css('explanation').inner_text,
            :types => children.css('types').inner_text,
            :soil => children.css('soil').inner_text,
            :keeping => children.css('triment').inner_text,
            :germination => children.css('propagatoin').inner_text,
            :usage => children.css('usage').inner_text,
            :note => children.css('note').inner_text
          )
          co = co + 1
          plant.save
        end
        puts "||||||||||||||||||||||||||||||||||||||||||||||||||||||"

        redirect_to plants_path
      end


      def follow

        @follow = Follow.new

        if not current_user.following?(@plant)
          @follow.followable_id=@plant.id
          @follow.followable_type=@plant.class
          @follow.follower_id=current_user.id
          @follow.follower_type=current_user.class
          @follow.created_at=Time.now
          @follow.save
        end

        respond_to do |format|
          format.html { redirect_to @plant , notice: 'این باغ به علاقه های شما اضافه شد' }
          format.json { render :show, status: :created, location: @plant }
          format.js
        end
      end


      def unfollow
        current_user.stop_following(@plant)
        respond_to do |format|
          format.html { redirect_to @plant , notice: 'این باغ از علاقه های شما حذف شد' }
          format.js
        end
      end



  # GET /plants
  # GET /plants.json
  def index
    # @plants = Plant.all
    @plants, @alphaParams = Plant.alpha_paginate(params[:letter], {db_mode: true, :bootstrap3=> true, :default_field=> 'A' , :pagination_class => "categories"  , db_field: "latin_name"})
    @page_title = "گیاهان "
    @footer = true
  end


  # GET /plants/1
  # GET /plants/1.json
  def show
    @comment = Comment.new
  end

  # GET /plants/new
  def new
    @plant = Plant.new
    authorize @plant
  end

  # GET /plants/1/edit
  def edit
    authorize @plant

  end

  # POST /plants
  # POST /plants.json
  def create
    @plant = Plant.new(plant_params)
    authorize @plant

    respond_to do |format|
      if @plant.save!

        if params[:leaf_shapes].present?
          shapes = params[:leaf_shapes]
          shapes.each do |x|
            shape = LeafShape.find(x)
            @plant.plant_leaf_shapes.create!(:leaf_shape => shape ,:plant => @plant)
          end
        end

        if params[:leaf_colors].present?
          colors = params[:leaf_colors]
          colors.each do |x|
            color = LeafColor.find(x)
            @plant.plant_leaf_colors.create!(:leaf_color => color ,:plant => @plant)
          end
        end

        if params[:bloom_colors].present?
          colors = params[:bloom_colors]
          colors.each do |x|
            color = BloomColor.find(x)
            @plant.plant_bloom_colors.create!(:bloom_color => color ,:plant => @plant)
          end
        end

        if params[:physical_structures].present?
          fiziks = params[:physical_structures]
          fiziks.each do |x|
            fizik = PhysicalStructure.find(x)
            @plant.plant_physical_structures.create!(:physical_structure => fizik ,:plant => @plant)
          end
        end


        if params[:soiles].present?
            soils = params[:soiles]
          soils.each do |x|
            soil = Soil.find(x)
            @plant.plant_soils.create!(:soil => soil,:plant => @plant)
          end
        end


        if params[:propagations].present?
            props = params[:propagations]
          props.each do |x|
            prop = Propagation.find(x)
            @plant.plant_propagations.create!(:propagation => prop ,:plant => @plant)
          end
        end

        if params[:epidemics].present?
            epids = params[:epidemics]
          epids.each do |x|
            epid = Epidemic.find(x)
            @plant.plant_epidemics.create!(:epidemic => epid ,:plant => @plant)
          end
        end

        if params[:medicals].present?
            medics = params[:medicals]
          medics.each do |x|
            medic = MedicalFeature.find(x)
            @plant.plant_medical_features.create!(:medical_feature => medic ,:plant => @plant)
          end
        end

        if params[:pests].present?
            pests = params[:pests]
          pests.each do |x|
            pest = Pest.find(x)
            @plant.plant_pests.create!(:pest => pest ,:plant => @plant)
          end
        end


        format.html { redirect_to edit_plant_path(@plant) , notice: 'Plant was successfully created.' }
        format.json { render :show, status: :created, location: @plant }
      else
        format.html { render :new }
        format.json { render json: @plant.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /plants/1
  # PATCH/PUT /plants/1.json
  def update
    authorize @plant

    if params[:leaf_shapes].present?
      shapes = params[:leaf_shapes]
      shapes.each do |x|
        shape = LeafShape.find(x)
        @plant.plant_leaf_shapes.create!(:leaf_shape => shape ,:plant => @plant)
      end
    end

    if params[:leaf_colors].present?
      colors = params[:leaf_colors]
      colors.each do |x|
        color = LeafColor.find(x)
        @plant.plant_leaf_colors.create!(:leaf_color => color ,:plant => @plant)
      end
    end

    if params[:bloom_colors].present?
      colors = params[:bloom_colors]
      colors.each do |x|
        color = BloomColor.find(x)
        @plant.plant_bloom_colors.create!(:bloom_color => color ,:plant => @plant)
      end
    end

    if params[:physical_structures].present?
      fiziks = params[:physical_structures]
      fiziks.each do |x|
        fizik = PhysicalStructure.find(x)
        @plant.plant_physical_structures.create!(:physical_structure => fizik ,:plant => @plant)
      end
    end

    if params[:soiles].present?
      soils = params[:soiles]
      soils.each do |x|
        soil = Soil.find(x)
        @plant.plant_soils.create!(:soil => soil,:plant => @plant)
      end
    end


    if params[:propagations].present?
        props = params[:propagations]
      props.each do |x|
        prop = Propagation.find(x)
        @plant.plant_propagations.create!(:propagation => prop ,:plant => @plant)
      end
    end

    if params[:medicals].present?
        medics = params[:medicals]
      medics.each do |x|
        medic = MedicalFeature.find(x)
        @plant.plant_medical_features.create!(:medical_feature_id => medic.id ,:plant => @plant)
      end
    end

    if params[:epidemics].present?
        epids = params[:epidemics]
      epids.each do |x|
        epid = Epidemic.find(x)
        @plant.plant_epidemics.create!(:epidemic => epid ,:plant => @plant)
      end
    end

    if params[:pests].present?
        pests = params[:pests]
      pests.each do |x|
        pest = Pest.find(x)
        @plant.plant_pests.create!(:pest => pest ,:plant => @plant)
      end
    end


    respond_to do |format|
      if @plant.update!(plant_params)
        format.html { redirect_to edit_plant_path(@plant) , notice: 'Plant was successfully updated.' }
        format.json { render :show, status: :ok, location: @plant }
      else
        format.html { render :edit }
        format.json { render json: @plant.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /plants/1
  # DELETE /plants/1.json
  def destroy
    @plant.destroy
    respond_to do |format|
      format.html { redirect_to plants_url, notice: 'Plant was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_plant
      @plant = Plant.find_by_farsi_name(params[:id])

      @page_title = "گیاه"
      if @plant.present?
        @page_title = @page_title + " " + @plant.farsi_name
      end

    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def plant_params
      params.require(:plant).permit(:farsi_name, :latin_name, :scientific_name, :family, :hardness, :geo_origin, :min_height, :max_height, :min_light, :max_light, :min_temp, :max_temp, :min_moisture, :max_moisture , {avatars: []},
      :leaf_color_id,:leaf_shape_id,:bloom_color_id , :life_time)
    end
end
