class Venta < ActiveRecord::Base
self.table_name = "ventas"
 belongs_to :cliente
<<<<<<< HEAD
 belongs_to :usuario
 belongs_to :producto
=======
  belongs_to :usuario
   belongs_to :producto 
       belongs_to :boleta

>>>>>>> f201db6919a1646e863201639b0eab244bbe98d3
end
