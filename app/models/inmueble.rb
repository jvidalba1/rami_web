class Inmueble < ActiveRecord::Base
  # attr_accessible :title, :body
  self.primary_key = :id
  
  has_many :propietarios
  
  accepts_nested_attributes_for :propietarios
  
  attr_accessible :id, :codigo_inmueble, :clase_inmueble, :ciudad_id, :zona, :tipo_negocio,
                  :direccion, :area_disponible, :area_disponible_desc, :valor_mt2, 
                  :valor_total, :planos, :valor_admin, :predial, :frente, :fondo, 
                  :otras_caracteristicas, :entorno, :info_adicional, :fecha_disponibilidad, 
                  :fecha_salida_inventario, :anio_construccion, :normas_de_uso, :indice_ocupacion,
                  :indice_construccion, :nro_pisos, :parqueadores, :densidad, :nombre_agente,
                  :quien_refiere, :telefono, :celular, :email, :propietario_id, :porcentaje_comision,
                  :valor_inmueble, :altura, :interesado_id, :fecha_captado, :transporte, 
                  :nro_pisos_permitidos, :created_at, :updated_at

  validates :codigo_inmueble, :presence => true 
end
