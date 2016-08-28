class Proveedor < ActiveRecord::Base
	belongs_to :comuna
	belongs_to :productos
end
