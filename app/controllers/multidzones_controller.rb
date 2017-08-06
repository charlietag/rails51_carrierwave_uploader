class MultidzonesController < ApplicationController
  before_action :set_multidzone, only: [:show, :edit, :update, :destroy]

  # GET /multidzones
  # GET /multidzones.json
  def index
    @multidzones = Multidzone.all
  end

  # GET /multidzones/1
  # GET /multidzones/1.json
  def show
  end

  # GET /multidzones/new
  def new
    @multidzone = Multidzone.new
  end

  # GET /multidzones/1/edit
  def edit
  end

  # POST /multidzones
  # POST /multidzones.json
  def create
    @multidzone = Multidzone.new(multidzone_params)

    respond_to do |format|
      if @multidzone.save
        format.html { redirect_to @multidzone, notice: 'Multidzone was successfully created.' }
        format.json { render :show, status: :created, location: @multidzone }
      else
        format.html { render :new }
        format.json { render json: @multidzone.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /multidzones/1
  # PATCH/PUT /multidzones/1.json
  def update
    respond_to do |format|
      if @multidzone.update(multidzone_params)
        format.html { redirect_to @multidzone, notice: 'Multidzone was successfully updated.' }
        format.json { render :show, status: :ok, location: @multidzone }
      else
        format.html { render :edit }
        format.json { render json: @multidzone.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /multidzones/1
  # DELETE /multidzones/1.json
  def destroy
    @multidzone.destroy
    respond_to do |format|
      format.html { redirect_to multidzones_url, notice: 'Multidzone was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_multidzone
      @multidzone = Multidzone.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def multidzone_params
      params.require(:multidzone).permit(:title, { pictures: [] } )
    end
end
