class UsuariosController < ApplicationController
  before_action :set_usuario, only: [:mostrar, :editar, :update, :eliminar]


  def index
    @usuarios = Usuario.paginate(:page => params[:page], :per_page => 10)
       respond_to do |format|
  format.html
     format.pdf do
     pdf = UsuariosPdf.new(@usuarios)
    send_data pdf.render, :filename =>'Usuarios.pdf',  
                          :type =>'aplication/pdf',
                         :disposition => 'inline'
end  
end  
  end


  
  def mostrar
       /@usuario= Usuario.find(params[:id])
  /
  end
 

   private
    # Use callbacks to share common setup or constraints between actions.
    def set_usuario
      @usuario = Usuario.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
  #  def proveedor_params
  #    params.require(:proveedor).permit(:nombre,:abreviacion,:razon_social,:rut,:domicilio,:fax,:telefono1,:telefono2,:web,:email,:descripcion, :comuna_id)
  #  end
end

  

  

  
