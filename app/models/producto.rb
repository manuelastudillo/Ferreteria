class Producto < ActiveRecord::Base
has_many :proveedor
has_many :categoria
end
