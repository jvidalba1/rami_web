# == Schema Information
#
# Table name: interesados
#
#  id            :integer          not null, primary key
#  nombre        :string(255)
#  telefono      :string(255)
#  celular       :string(255)
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  email         :string(255)
#  observaciones :text
#

class Interesado < ActiveRecord::Base
  self.primary_key = :id

  has_and_belongs_to_many :inmuebles

  attr_accessible :id, :nombre, :telefono, :celular, :email, :observaciones
end
