class ProductosPdf < Prawn::Document
	def initialize(productos)
     super(top_Margin: 70)
   @productos=productos
   text "Productos" , size: 30, style: :bold
   line_items
  
	end

	def line_items
		move_down 20
		table line_item_rows
	end

    def line_item_rows
    	[["nombre","Abreviacion","Precio","Stock"]]+
    	@productos.map do  |item|
    	[item.nombre, item.abreviacion, item.precio_venta, item.stock] 
    	end
    	end 
end