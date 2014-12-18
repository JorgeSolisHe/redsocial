class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  attr_accessible :primer_nombre, :primer_apellido, :nombre_perfil, :email, :password, :password_confirmations

  has_many :statuses
  def nombre_completo
  	primer_nombre+ " " + primer_apellido
  end
end
