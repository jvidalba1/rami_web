class CreateInmuebles < ActiveRecord::Migration
  def change
    create_table :inmuebles do |t|
      t.integer :codigo_inmueble
      t.integer :clase_inmueble
      t.integer :ciudad_id
      t.string  :zona
      t.integer :tipo_negocio
      t.string  :direccion
      t.decimal :area_disponible, :precision => 15, :scale => 2
      t.string  :area_disponible_desc
      t.decimal :valor_mt2,       :precision => 15, :scale => 2
      t.decimal :valor_total,     :precision => 15, :scale => 2
      t.string  :planos
      t.decimal :valor_admin,     :precision => 15, :scale => 2
      t.decimal :predial,         :precision => 15, :scale => 2
      t.decimal :frente,          :precision => 15, :scale => 2
      t.decimal :fondo,           :precision => 15, :scale => 2
      t.string  :otras_caracteristicas
      t.string  :entorno
      t.string  :info_adicional
      t.date    :fecha_disponibilidad
      t.date    :fecha_salida_inventario
      t.integer :anio_construccion
      t.string  :normas_de_uso
      t.decimal :indice_ocupacion, :precision => 15, :scale => 2
      t.decimal :indice_construccion, :precision => 15, :scale => 2
      t.integer :nro_pisos
      t.integer :parqueadores
      t.decimal :densidad,        :precision => 15, :scale => 2
      t.string  :nombre_agente
      t.string  :quien_refiere
      t.string  :telefono
      t.string  :celular
      t.string  :email
      t.integer :propietario_id
      t.decimal :porcentaje_comision, :precision => 15, :scale => 2
      t.decimal :valor_inmueble,      :precision => 15, :scale => 2
      t.decimal :altura,              :precision => 15, :scale => 2
      t.integer :interesado_id
      t.date    :fecha_captado
      t.string  :transporte
      t.integer :nro_pisos_permitidos

      t.timestamps
    end
  end
  
  def down
    drop_table :inmuebles
  end
end
