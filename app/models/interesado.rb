class Interesado < ActiveRecord::Base
  self.primary_key = :id
  attr_accessible :id, :nombre, :telefono, :celular  
end