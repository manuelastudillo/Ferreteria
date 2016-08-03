class ProveedorsController < ApplicationController
  before_action :set_proveedor, only: [:mostrar, :editar, :update, :eliminar]


  def index
    @proveedors = Proveedor.paginate(:page => params[:page], :per_page => 10)
  end

  def nuevo
    @proveedor = Proveedor.new
  end

  def crear
    @proveedor = Proveedor.new(proveedor_params)
    respond_to do |format|
      if @proveedor.save
        format.html{redirect_to @proveedor, notice:  'proveedor Guardado Con Exito'}
      else
        format.html{render :new}
      end
    end
  end

  def editar
  end

  def mostrar
  end

  def update
    respond_to do |format|
      if @proveedor.update(proveedor_params)
        format.html{redirect_to @proveedor, notice: 'proveedor Editado con Exito'}
      else
        format.html{render :edit}
      end
    end
  end

  def eliminar
    @proveedor.destroy
    respond_to do |format|
      format.html { redirect_to proveedors_url, notice: 'proveedor eliminado con Exito.' }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_proveedor
      @proveedor = Proveedor.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def proveedor_params
      params.require(:proveedor).permit(:nom_prov,:abre_prov,:r_social,:rut,:domicilio,:fax,:telefono1,:telefono2,:web,:email1,:email2)
    end
end