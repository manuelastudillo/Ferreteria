class Venta < ActiveRecord::Base
self.table_name = "ventas"
 belongs_to :cliente
 belongs_to :usuario
 belongs_to :producto
end
