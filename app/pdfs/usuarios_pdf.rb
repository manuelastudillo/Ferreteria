class UsuariosPdf < Prawn::Document
	def initialize(usuarios)
     super(top_Margin: 70)
   @usuarios=usuarios
   text "Usuarios" , size: 30, style: :bold
   line_items
  
	end

	def line_items
		move_down 20
		table line_item_rows
	end

    def line_item_rows
    	[["nombre","Rut","Domicilio","Telefono","Email","Fecha Ingreso","Sueldo"]]+
    	@usuarios.map do  |item|
    	[item.nombre, item.rut, item.calle, item.telefono, item.email, item.fechaingreso, item.sueldo] 
    	end
    	end 
end