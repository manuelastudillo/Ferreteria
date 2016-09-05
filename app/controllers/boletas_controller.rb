class BoletasController < ApplicationController
before_action :set_boleta, only: [:mostrar, :editar, :update, :eliminar]
  def index
    @boletas = Boleta.paginate(:page => params[:page], :per_page => 10)
  end

  def nuevo
    @boleta = Boleta.new
  end

  def crear
    @boleta = Boleta.new(boleta_params)
    respond_to do |format|
      if @boleta.save

   format.html{redirect_to boleta_url(@boleta), notice:  'boleta Guardado Con Exito'}

      else
        format.html{render :nuevo}
      end
    end
  end

  def editar
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_boleta
      @boleta = Boleta.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def boleta_params
      params.require(:boleta).permit(:nombre,:abreviacion,:estado,:descripcion)
    end
end
