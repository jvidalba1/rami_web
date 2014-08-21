class CreateIntermediarios < ActiveRecord::Migration
  def up
    create_table :intermediarios do |t|
      t.string :telefono
      t.string :nombre
      t.string :email
      t.date :ult_fecha_contacto
      t.string :observaciones
      t.integer :inmueble_id
      t.timestamps
    end
  end

  def down
    drop_table :intermediarios
  end
end
