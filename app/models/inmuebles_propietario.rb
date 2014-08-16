class InmueblesPropietario < ActiveRecord::Base
  self.table_name = "inmuebles_propietarios"
  attr_accessible :inmueble_id, :propietario_id
end