class Boleta < ActiveRecord::Base
	self.table_name = "boletas"
	has_many :ventas
end
