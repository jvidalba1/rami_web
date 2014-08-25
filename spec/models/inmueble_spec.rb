# == Schema Information
#
# Table name: inmuebles
#
#  id                       :integer          not null, primary key
#  codigo_inmueble          :integer
#  clase_inmueble           :integer
#  ciudad_id                :integer
#  zona                     :string(255)
#  tipo_negocio             :integer
#  direccion                :string(255)
#  area_disponible          :decimal(15, 2)
#  area_disponible_desc     :string(255)
#  valor_mt2                :decimal(15, 2)
#  valor_total              :decimal(15, 2)
#  planos                   :string(255)
#  valor_admin              :decimal(15, 2)
#  predial                  :decimal(15, 2)
#  frente                   :decimal(15, 2)
#  fondo                    :decimal(15, 2)
#  otras_caracteristicas    :string(255)
#  entorno                  :string(255)
#  info_adicional           :string(255)
#  fecha_disponibilidad     :date
#  fecha_salida_inventario  :date
#  anio_construccion        :integer
#  normas_de_uso            :string(255)
#  indice_ocupacion         :decimal(15, 2)
#  indice_construccion      :decimal(15, 2)
#  nro_pisos                :integer
#  parqueadores             :integer
#  densidad                 :decimal(15, 2)
#  nombre_agente            :string(255)
#  quien_refiere            :string(255)
#  telefono                 :string(255)
#  celular                  :string(255)
#  email                    :string(255)
#  porcentaje_comision      :decimal(15, 2)
#  valor_inmueble           :decimal(15, 2)
#  altura                   :decimal(15, 2)
#  fecha_captado            :date
#  transporte               :string(255)
#  nro_pisos_permitidos     :integer
#  created_at               :datetime         not null
#  updated_at               :datetime         not null
#  nombre_interesado        :string(255)
#  telefono_interesado      :string(255)
#  celular_interesado       :string(255)
#  email_interesado         :string(255)
#  observaciones_interesado :string(255)
#  propietario_id           :integer
#  status                   :integer
#

require 'spec_helper'

describe Inmueble do
  pending "add some examples to (or delete) #{__FILE__}"
end
