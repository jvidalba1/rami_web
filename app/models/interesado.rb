# == Schema Information
#
# Table name: interesados
#
#  id         :integer          not null, primary key
#  nombre     :string(255)
#  telefono   :string(255)
#  celular    :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Interesado < ActiveRecord::Base
  self.primary_key = :id
  attr_accessible :id, :nombre, :telefono, :celular  
end
