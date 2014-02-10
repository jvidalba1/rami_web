class Ciudad < ActiveRecord::Base
  self.primary_key = :id
  attr_accessible :id, :departamento, :nombre
end