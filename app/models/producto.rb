class Producto < ActiveRecord::Base
	  belongs_to :proveedor
    belongs_to :categoria
    belongs_to :marca
end
