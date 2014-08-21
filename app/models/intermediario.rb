class Intermediario < ActiveRecord::Base
  self.primary_key = :id
  belongs_to :inmueble
  attr_accessible :id, :telefono, :nombre, :email, :ult_fecha_contacto, :observaciones, :inmueble_id

end