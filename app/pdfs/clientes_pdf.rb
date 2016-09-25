class ClientesPdf < Prawn::Document
	def initialize(clientes)
     super(top_Margin: 70)
   @clientes=clientes
   text "Clientes" , size: 30, style: :bold
   line_items
  
	end

	def line_items
		move_down 20
		table line_item_rows
	end

    def line_item_rows
    	[["nombre","Rut","Domicilio","Telefono","Email"]]+
    	@clientes.map do  |item|
    	[item.nombre, item.rut, item.domicilio, item.telefono1, item.email] 
    	end
    	end 
end