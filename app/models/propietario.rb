class Propietario < ActiveRecord::Base
  self.primary_key = :id

  attr_accessible :id, :nombre, :telefono, :celular, :direccion, :email, :inmueble_id
  has_many :inmuebles

end