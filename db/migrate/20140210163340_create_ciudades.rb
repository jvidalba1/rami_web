class CreateCiudades < ActiveRecord::Migration
  def up
    create_table :ciudades do |t|
      t.string :nombre
      t.string :departamento
      t.timestamps
    end
    
  end

  def down
    drop_table :ciudades
  end
end
