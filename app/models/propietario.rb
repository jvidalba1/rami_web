class Propietario < ActiveRecord::Base
  self.primary_key = :id
  
  has_many :inmuebles
  attr_accessible :id, :nombre, :telefono, :celular, :direccion, :email, :inmueble_id
end