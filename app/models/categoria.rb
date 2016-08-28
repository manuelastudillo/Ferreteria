class Categoria < ActiveRecord::Base
  self.table_name = "categorias"
  has_many :comunas


#Validaciones de título
 #validates :nom_cat , presence: true , confirmation: true
 #validates :nom_cat, presence: { message: " es requerido"}
 # validates :abre_cat , presence: true , confirmation: true
 validates :nombre, :presence => {:message => "Usted debe ingresar un título"}, length: {minimum: 2, maximum: 50, :message => "El título debe tener entre 2 y 50 caracteres"}

 validates :abreviacion, presence: { message: " es requerido"}
 # validates :desc_cat , presence: true , confirmation: true
 validates :descripcion, presence: { message: " es requerido"}
#validates :abre_cat, presence: true => {message: => "Usted debe ingresar nombre de la Categoria"}
#validates :nom_cat, :presence => {message: => "Usted debe ingresar nombre de la Categoria"}, length: {minimum: 2, maximum: 50, :message => "El nombre debe tener entre 2 y 50 caracteres"}

#Validaciones de descripción
#validates :descripcion, :presence => {:message => "Usted debe ingresar una descripción"}, length: {minimum: 2, maximum: 4000, :message => "La descripción debe tener entre 2 y 4000 caracteres"}
#Validaciones de prioridad
#validates :prioridad, :presence => {:message => "Usted debe ingresar una prioridad"}, :numericality => {:only_integer => true, :message => "La prioridad debe ser numérica"}  
end
