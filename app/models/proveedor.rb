class Proveedor < ActiveRecord::Base
	belongs_to :comuna
	belongs_to :productos



validates :nombre,  length: {minimum: 2, maximum: 50, :message => " debe tener entre 2 y 50 caracteres"}
validates :abreviacion,  length: {minimum: 2, maximum: 50, :message => " debe tener entre 2 y 50 caracteres"}
validates :razon_social,  length: {minimum: 2, maximum: 50, :message => " debe tener entre 2 y 50 caracteres"}
validates_format_of :rut,
                      :with => /\A(\d{1,3})\.(\d{1,3})\.(\d{1,3})\-(k|\d{1})\Z/i,
                      :message => "no válido."


end
