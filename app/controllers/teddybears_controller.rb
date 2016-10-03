class TeddybearsController < ApplicationController
  before_action :set_teddybear, only: [:show, :edit, :update, :destroy]

  # GET /teddybears
  # GET /teddybears.json
  def index
    @teddybears = Teddybear.all
  end

  # GET /teddybears/1
  # GET /teddybears/1.json
  def show
  end

  # GET /teddybears/new
  def new
    @teddybear = Teddybear.new
  end

  # GET /teddybears/1/edit
  def edit
  end

  # POST /teddybears
  # POST /teddybears.json
  def create
    @teddybear = Teddybear.new(teddybear_params)

    respond_to do |format|
      if @teddybear.save
        format.html { redirect_to @teddybear, notice: 'Teddybear was successfully created.' }
        format.json { render :show, status: :created, location: @teddybear }
      else
        format.html { render :new }
        format.json { render json: @teddybear.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /teddybears/1
  # PATCH/PUT /teddybears/1.json
  def update
    respond_to do |format|
      if @teddybear.update(teddybear_params)
        format.html { redirect_to @teddybear, notice: 'Teddybear was successfully updated.' }
        format.json { render :show, status: :ok, location: @teddybear }
      else
        format.html { render :edit }
        format.json { render json: @teddybear.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /teddybears/1
  # DELETE /teddybears/1.json
  def destroy
    @teddybear.destroy
    respond_to do |format|
      format.html { redirect_to teddybears_url, notice: 'Teddybear was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_teddybear
      @teddybear = Teddybear.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def teddybear_params
      params.require(:teddybear).permit(:name, :email)
    end
end
