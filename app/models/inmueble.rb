class Inmueble < ActiveRecord::Base
  # attr_accessible :title, :body
  self.primary_key = :id
  
  has_many :propietarios
  belongs_to :ciudad

  has_many :documentos
  accepts_nested_attributes_for :documentos, :reject_if => lambda { |a| a[:documento].blank? }

  accepts_nested_attributes_for :propietarios
  
  attr_accessible :id,
                  :codigo_inmueble,                     # ya
                  :clase_inmueble,                      # ya
                  :ciudad_id,                           # ya
                  :zona,                                # ya
                  :tipo_negocio,                        # ya
                  :direccion,                           # ya
                  :area_disponible,                     # ya
                  :area_disponible_desc,      # texto
                  :valor_mt2,                           # ya
                  :valor_total,                         # ya
                  :planos,
                  :valor_admin,                         # ya
                  :predial,
                  :frente,
                  :fondo,
                  :otras_caracteristicas,     # texto
                  :entorno,                   # texto
                  :info_adicional,
                  :fecha_disponibilidad,
                  :fecha_salida_inventario,
                  :anio_construccion,
                  :normas_de_uso,             # texto
                  :indice_ocupacion,
                  :indice_construccion,
                  :nro_pisos,
                  :parqueadores,
                  :densidad,
                  :nombre_agente,
                  :quien_refiere,
                  :telefono,
                  :celular,
                  :email,
                  :propietario_id,
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
                  :documentos_attributes

  validates :codigo_inmueble, :presence => true 
end
