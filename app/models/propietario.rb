class Propietario < ActiveRecord::Base
  self.primary_key = :id
  
  belongs_to :inmueble
  attr_accessible :id, :nombre, :telefono, :celular, :direccion, :email, :inmueble_id
end