class Inmueble < ActiveRecord::Base
  # attr_accessible :title, :body
  self.primary_key = :id

  belongs_to :propietario

  belongs_to :ciudad

  has_many :documentos
  accepts_nested_attributes_for :documentos, :reject_if => lambda { |a| a[:documento].blank? }, :allow_destroy => true

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
                  :predial,                             # ya
                  :frente,                              # ya
                  :fondo,
                  :otras_caracteristicas,     # texto
                  :entorno,                   # texto
                  :info_adicional,            # no esta en formulario
                  :fecha_disponibilidad,                # ya
                  :fecha_salida_inventario,             # ya
                  :anio_construccion,                   # ya
                  :normas_de_uso,             # texto
                  :indice_ocupacion,                    # ya
                  :indice_construccion,                 # ya
                  :nro_pisos,                           # ya
                  :parqueadores,                        # ya
                  :densidad,                            # ya
                  :nombre_agente,                       # ya
                  :quien_refiere,                       # ya
                  :telefono,                            # ya
                  :celular,                             # ya
                  :email,                               # ya
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
                  :propietarios_attributes

  validates :codigo_inmueble, :presence => true

end
