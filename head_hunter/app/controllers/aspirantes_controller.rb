class AspirantesController < ApplicationController
  before_action :set_aspirante, only: [:show, :edit, :update, :destroy]

  # GET /aspirantes
  # GET /aspirantes.json
  def index
    @aspirantes = Aspirante.all
  end

  # GET /aspirantes/1
  # GET /aspirantes/1.json
  def show
  end

  # GET /aspirantes/new
  def new
    @aspirante = Aspirante.new
  end

  # GET /aspirantes/1/edit
  def edit
  end

  # POST /aspirantes
  # POST /aspirantes.json
  def create
    @aspirante = Aspirante.new(aspirante_params)
    @aspirante.save
    redirect_to root_url, notice:'Se agrego el usuario con éxito'

  end

  # PATCH/PUT /aspirantes/1
  # PATCH/PUT /aspirantes/1.json
  def update
    respond_to do |format|
      if @aspirante.update(aspirante_params)
        format.html { redirect_to @aspirante, notice: 'Aspirante was successfully updated.' }
        format.json { render :show, status: :ok, location: @aspirante }
      else
        format.html { render :edit }
        format.json { render json: @aspirante.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /aspirantes/1
  # DELETE /aspirantes/1.json
  def destroy
    @aspirante.destroy
    respond_to do |format|
      format.html { redirect_to aspirantes_url, notice: 'Aspirante was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_aspirante
      @aspirante = Aspirante.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def aspirante_params
      params.require(:aspirante).permit(:nombres, :apellidos, :cedula, :sexo, :fecha, :correo, :contraseña, :telefono, :estado, :municipio, :celular, :discapacidad, :intereses, :bachillerato, :mencion, :institucion, :estudios_universitarios, :institucion_otros_estudios, :area_universidad)
    end
end

