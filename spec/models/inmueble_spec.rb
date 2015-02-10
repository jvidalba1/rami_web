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
#  nombre_encargado        :string(255)
#  celular_encargado       :string(255)
#  email_encargado         :string(255)
#  trato_destino_reporte   :integer
#  nombre_destino_reporte  :string(255)
#  cargo_destino_reporte   :string(255)
#

require 'spec_helper'

describe Inmueble do
  pending "add some examples to (or delete) #{__FILE__}"
end
