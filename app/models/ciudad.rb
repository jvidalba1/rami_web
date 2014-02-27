class Ciudad < ActiveRecord::Base
  self.primary_key = :id
  has_many :inmuebles
  attr_accessible :departamento, :nombre
end