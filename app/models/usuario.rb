class Usuario < ActiveRecord::Base
	  self.table_name = "usuarios"
	    has_many :comunas
	    has_many :ventas
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
