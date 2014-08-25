# == Schema Information
#
# Table name: propietarios
#
#  id         :integer          not null, primary key
#  telefono   :string(255)
#  direccion  :string(255)
#  celular    :string(255)
#  email      :string(255)
#  nombre     :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Propietario < ActiveRecord::Base
  self.primary_key = :id

  attr_accessible :id, :nombre, :telefono, :celular, :direccion, :email, :inmueble_id
  has_many :inmuebles

end
