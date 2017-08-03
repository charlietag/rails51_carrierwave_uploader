class DollsController < ApplicationController
  before_action :set_doll, only: [:show, :edit, :update, :destroy]

  # GET /dolls
  # GET /dolls.json
  def index
    @dolls = Doll.all
  end

  # GET /dolls/1
  # GET /dolls/1.json
  def show
  end

  # GET /dolls/new
  def new
    @doll = Doll.new
  end

  # GET /dolls/1/edit
  def edit
  end

  # POST /dolls
  # POST /dolls.json
  def create
    @doll = Doll.new(doll_params)

    respond_to do |format|
      if @doll.save
        format.html { redirect_to @doll, notice: 'Doll was successfully created.' }
        format.json { render :show, status: :created, location: @doll }
      else
        format.html { render :new }
        format.json { render json: @doll.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dolls/1
  # PATCH/PUT /dolls/1.json
  def update
    respond_to do |format|
      if @doll.update(doll_params)
        format.html { redirect_to @doll, notice: 'Doll was successfully updated.' }
        format.json { render :show, status: :ok, location: @doll }
      else
        format.html { render :edit }
        format.json { render json: @doll.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dolls/1
  # DELETE /dolls/1.json
  def destroy
    @doll.destroy
    respond_to do |format|
      format.html { redirect_to dolls_url, notice: 'Doll was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_doll
      @doll = Doll.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def doll_params
      params.require(:doll).permit(:name, :avatar)
    end
end
