class DzonesController < ApplicationController
  before_action :set_dzone, only: [:show, :edit, :update, :destroy]

  # GET /dzones
  # GET /dzones.json
  def index
    @dzones = Dzone.all
  end

  # GET /dzones/1
  # GET /dzones/1.json
  def show
  end

  # GET /dzones/new
  def new
    @dzone = Dzone.new
  end

  # GET /dzones/1/edit
  def edit
  end

  # POST /dzones
  # POST /dzones.json
  def create
    @dzone = Dzone.new(dzone_params)

    respond_to do |format|
      if @dzone.save
        format.html { redirect_to @dzone, notice: 'Dzone was successfully created.' }
        format.json { render :show, status: :created, location: @dzone }
      else
        format.html { render :new }
        format.json { render json: @dzone.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dzones/1
  # PATCH/PUT /dzones/1.json
  def update
    respond_to do |format|
      if @dzone.update(dzone_params)
        format.html { redirect_to @dzone, notice: 'Dzone was successfully updated.' }
        format.json { render :show, status: :ok, location: @dzone }
      else
        format.html { render :edit }
        format.json { render json: @dzone.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dzones/1
  # DELETE /dzones/1.json
  def destroy
    @dzone.destroy
    respond_to do |format|
      format.html { redirect_to dzones_url, notice: 'Dzone was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dzone
      @dzone = Dzone.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dzone_params
      params.require(:dzone).permit(:title, :picture)
      #params.require(:dzone).permit(:title, {picture: []})
    end
end
