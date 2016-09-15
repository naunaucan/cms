class KotaController < ApplicationController
  before_action :set_kotum, only: [:show, :edit, :update, :destroy]

  # GET /kota
  # GET /kota.json
  def index
    @kota = Kotum.all
  end

  # GET /kota/1
  # GET /kota/1.json
  def show
  end

  # GET /kota/new
  def new
    @kotum = Kotum.new
  end

  # GET /kota/1/edit
  def edit
  end

  # POST /kota
  # POST /kota.json
  def create
    @kotum = Kotum.new(kotum_params)

    respond_to do |format|
      if @kotum.save
        format.html { redirect_to @kotum, notice: 'Kotum was successfully created.' }
        format.json { render :show, status: :created, location: @kotum }
      else
        format.html { render :new }
        format.json { render json: @kotum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /kota/1
  # PATCH/PUT /kota/1.json
  def update
    respond_to do |format|
      if @kotum.update(kotum_params)
        format.html { redirect_to @kotum, notice: 'Kotum was successfully updated.' }
        format.json { render :show, status: :ok, location: @kotum }
      else
        format.html { render :edit }
        format.json { render json: @kotum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /kota/1
  # DELETE /kota/1.json
  def destroy
    @kotum.destroy
    respond_to do |format|
      format.html { redirect_to kota_url, notice: 'Kotum was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_kotum
      @kotum = Kotum.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def kotum_params
      params.require(:kotum).permit(:id, :name, :provinsi_id, :is_active)
    end
end
