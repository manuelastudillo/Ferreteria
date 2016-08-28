class Producto < ActiveRecord::Base
	has_many :proveedor
    has_many :categoria
    has_many :marca
end
