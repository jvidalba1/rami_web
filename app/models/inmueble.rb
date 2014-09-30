# == Schema Information
#
# Table name: inmuebles
#
#  id                      :integer          not null, primary key
#  clase_inmueble          :integer
#  ciudad_id               :integer
#  zona                    :string(255)
#  tipo_negocio            :integer
#  direccion               :string(255)
#  area_disponible         :decimal(15, 2)
#  area_disponible_desc    :string(255)
#  valor_mt2               :decimal(15, 2)
#  valor_total             :decimal(15, 2)
#  valor_admin             :decimal(15, 2)
#  predial                 :decimal(15, 2)
#  frente                  :decimal(15, 2)
#  fondo                   :decimal(15, 2)
#  otras_caracteristicas   :string(255)
#  entorno                 :string(255)
#  info_adicional          :string(255)
#  fecha_disponibilidad    :date
#  fecha_salida_inventario :date
#  anio_construccion       :integer
#  indice_ocupacion        :decimal(15, 2)
#  indice_construccion     :decimal(15, 2)
#  nro_pisos               :integer
#  parqueadores            :integer
#  densidad                :decimal(15, 2)
#  propietario_id          :integer
#  porcentaje_comision     :decimal(15, 2)
#  valor_inmueble          :decimal(15, 2)
#  altura                  :decimal(15, 2)
#  fecha_captado           :date
#  transporte              :string(255)
#  nro_pisos_permitidos    :integer
#  created_at              :datetime         not null
#  updated_at              :datetime         not null
#  status                  :integer
#  nombre_inmueble         :string(255)
#  logo                    :string(255)
#

require 'csv'
class Inmueble < ActiveRecord::Base

  mount_uploader :logo, LogoUploader

  # attr_accessible :title, :body
  default_scope order("nombre_inmueble ASC")
  self.primary_key = :id

  belongs_to :propietario
  belongs_to :ciudad

  has_and_belongs_to_many :interesados
  accepts_nested_attributes_for :interesados

  has_and_belongs_to_many :intermediarios
  accepts_nested_attributes_for :intermediarios

  has_many :documentos
  accepts_nested_attributes_for :documentos

  attr_accessible :id,
                  :nombre_inmueble,                     # ya
                  :clase_inmueble,                      # ya
                  :ciudad_id,                           # ya
                  :zona,                                # ya
                  :tipo_negocio,                        # ya
                  :direccion,                           # ya
                  :area_disponible,                     # ya
                  :area_disponible_desc,      # texto
                  :valor_mt2,                           # ya
                  :valor_total,                         # ya
                  :valor_admin,                         # ya
                  :predial,                             # ya
                  :frente,                              # ya
                  :fondo,
                  :otras_caracteristicas,     # texto
                  :entorno,                   # texto
                  :info_adicional,            # no esta en formulario
                  :fecha_disponibilidad,                # ya
                  :fecha_salida_inventario,             # ya
                  :anio_construccion,                   # ya
                  :indice_ocupacion,                    # ya
                  :indice_construccion,                 # ya
                  :nro_pisos,                           # ya
                  :parqueadores,                        # ya
                  :densidad,                            # ya
                  :propietario_id,                      # ya
                  :porcentaje_comision,
                  :valor_inmueble,
                  :altura,
                  :fecha_captado,
                  :transporte,                # texto
                  :nro_pisos_permitidos,
                  :created_at,
                  :updated_at,
                  :nombre_interesado,
                  :telefono_interesado,
                  :celular_interesado,
                  :email_interesado,
                  :observaciones_interesado,  # texto
                  :documentos_attributes,
                  :propietarios_attributes,
                  :intermediarios_attributes,
                  :interesados_attributes,
                  :status,
                  :logo, :logo_cache


  validates :nombre_inmueble, :presence => true

  def active?
    if self.status.eql? 1
      true
    else
      false
    end
  end

  def self.to_csv(options = {})
    CSV.generate(options) do |csv|
      csv << ["nombre_inmueble", "ciudad_id"]
      # all.each do |product|
      #   csv << product.attributes.values_at(*column_names)
      # end
    end
  end

end
