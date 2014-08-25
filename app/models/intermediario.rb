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
#  inmueble_id        :integer
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#

class Intermediario < ActiveRecord::Base
  self.primary_key = :id

  attr_accessible :id, :telefono, :nombre, :email, :ult_fecha_contacto, :observaciones
  belongs_to :inmueble

end
