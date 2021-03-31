class ReclutamientosController < ApplicationController
  before_action :set_reclutamiento, only: %i[ show edit update destroy ]

  # GET /reclutamientos or /reclutamientos.json
  def index
    @reclutamientos = Reclutamiento.all
  end

  # GET /reclutamientos/1 or /reclutamientos/1.json
  def show
  end

  # GET /reclutamientos/new
  def new
    @reclutamiento = Reclutamiento.new
  end

  # GET /reclutamientos/1/edit
  def edit
  end

  # POST /reclutamientos or /reclutamientos.json
  def create
    @reclutamiento = Reclutamiento.new(reclutamiento_params)

    respond_to do |format|
      if @reclutamiento.save
        format.html { redirect_to @reclutamiento, notice: "Reclutamiento was successfully created." }
        format.json { render :show, status: :created, location: @reclutamiento }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @reclutamiento.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /reclutamientos/1 or /reclutamientos/1.json
  def update
    respond_to do |format|
      if @reclutamiento.update(reclutamiento_params)
        format.html { redirect_to @reclutamiento, notice: "Reclutamiento was successfully updated." }
        format.json { render :show, status: :ok, location: @reclutamiento }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @reclutamiento.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /reclutamientos/1 or /reclutamientos/1.json
  def destroy
    @reclutamiento.destroy
    respond_to do |format|
      format.html { redirect_to reclutamientos_url, notice: "Reclutamiento was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_reclutamiento
      @reclutamiento = Reclutamiento.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def reclutamiento_params
      params.require(:reclutamiento).permit(:first_name, :last_name, :status, :discordId, :nacionalidad, :birthdate, :email, :phone_number, :ingreso, :notas, :image)
    end
end
