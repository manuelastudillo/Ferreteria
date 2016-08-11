class CategoriasController < ApplicationController
  before_action :set_categoria, only: [:mostrar, :editar, :update, :eliminar]


  def index
    @categorias = Categoria.paginate(:page => params[:page], :per_page => 10)
  end

  def nuevo
    @categoria = Categoria.new
  end

  def crear
    @categoria = Categoria.new(categoria_params)
    respond_to do |format|
      if @categoria.save

   format.html{redirect_to categoria_url(@categoria), notice:  'categoria Guardado Con Exito'}

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
      if @categoria.update(categoria_params)
        format.html{redirect_to @categoria, notice: 'categoria Editado con Exito'}
      else
        format.html{render :edit}
      end
    end
  end

  def eliminar
    @categoria.destroy
    respond_to do |format|
      format.html { redirect_to categorias_url, notice: 'categoria eliminado con Exito.' }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_categoria
      @categoria = Categoria.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def categoria_params
      params.require(:categoria).permit(:nom_cat,:abre_cat,:esta_cat,:desc_cat)
    end
end
