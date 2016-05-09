class EpidemicsController < ApplicationController
  before_action :set_epidemic, only: [:show, :edit, :update, :destroy]

  # GET /epidemics
  # GET /epidemics.json
  def index
    @epidemics = Epidemic.all
  end

  # GET /epidemics/1
  # GET /epidemics/1.json
  def show
  end

  # GET /epidemics/new
  def new
    @epidemic = Epidemic.new
  end

  # GET /epidemics/1/edit
  def edit
  end

  # POST /epidemics
  # POST /epidemics.json
  def create
    @epidemic = Epidemic.new(epidemic_params)

    respond_to do |format|
      if @epidemic.save
        format.html { redirect_to @epidemic, notice: 'Epidemic was successfully created.' }
        format.json { render :show, status: :created, location: @epidemic }
      else
        format.html { render :new }
        format.json { render json: @epidemic.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /epidemics/1
  # PATCH/PUT /epidemics/1.json
  def update
    respond_to do |format|
      if @epidemic.update(epidemic_params)
        format.html { redirect_to @epidemic, notice: 'Epidemic was successfully updated.' }
        format.json { render :show, status: :ok, location: @epidemic }
      else
        format.html { render :edit }
        format.json { render json: @epidemic.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /epidemics/1
  # DELETE /epidemics/1.json
  def destroy
    @epidemic.destroy
    respond_to do |format|
      format.html { redirect_to epidemics_url, notice: 'Epidemic was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_epidemic
      @epidemic = Epidemic.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def epidemic_params
      params.require(:epidemic).permit(:sign, :cause, {avatars: []})
    end
end
