# == Schema Information
#
# Table name: intermediarios
#
#  id                 :integer          not null, primary key
#  telefono           :string(255)
#  nombre             :string(255)
#  email              :string(255)
#  ult_fecha_contacto :date
#  observaciones      :string(255)
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#

class Intermediario < ActiveRecord::Base
  self.primary_key = :id

  has_and_belongs_to_many :inmuebles

  attr_accessible :id, :telefono, :nombre, :email, :ult_fecha_contacto, :observaciones

end
