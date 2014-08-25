# == Schema Information
#
# Table name: ciudades
#
#  id           :integer          not null, primary key
#  nombre       :string(255)
#  departamento :string(255)
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Ciudad < ActiveRecord::Base
  self.primary_key = :id
  has_many :inmuebles
  attr_accessible :departamento, :nombre
end
