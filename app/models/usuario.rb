class Usuario < ActiveRecord::Base
	  self.table_name = "usuarios"
	    has_many :comunas
	    has_many :ventas
	    belongs_to :rol

	    validates :nombre,  length: {minimum: 2, maximum: 50, :message => " debe tener entre 2 y 50 caracteres"}
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
