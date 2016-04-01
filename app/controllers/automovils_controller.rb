class AutomovilsController < ApplicationController
  before_action :set_automovil, only: [:show, :edit, :update, :destroy]

  # GET /automovils
  # GET /automovils.json
  def index
    @automovils = Automovil.all
  end

  # GET /automovils/1
  # GET /automovils/1.json
  def show
  end

  # GET /automovils/new
  def new
    @automovil = Automovil.new
  end

  # GET /automovils/1/edit
  def edit
  end

  # POST /automovils
  # POST /automovils.json
  def create
    @automovil = Automovil.new(automovil_params)

    respond_to do |format|
      if @automovil.save
        format.html { redirect_to @automovil, notice: 'Automovil was successfully created.' }
        format.json { render :show, status: :created, location: @automovil }
      else
        format.html { render :new }
        format.json { render json: @automovil.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /automovils/1
  # PATCH/PUT /automovils/1.json
  def update
    respond_to do |format|
      if @automovil.update(automovil_params)
        format.html { redirect_to @automovil, notice: 'Automovil was successfully updated.' }
        format.json { render :show, status: :ok, location: @automovil }
      else
        format.html { render :edit }
        format.json { render json: @automovil.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /automovils/1
  # DELETE /automovils/1.json
  def destroy
    @automovil.destroy
    respond_to do |format|
      format.html { redirect_to automovils_url, notice: 'Automovil was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_automovil
      @automovil = Automovil.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def automovil_params
      params.require(:automovil).permit(:Placa_auto, :Marca_auto, :Modelo_auto, :Color_auto, :Fecha_Registro_auto)
    end
end
