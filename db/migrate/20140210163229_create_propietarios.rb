class CreatePropietarios < ActiveRecord::Migration
  def up
    create_table :propietarios do |t|
      t.string :telefono
      t.string :direccion
      t.string :celular
      t.string :email
      t.string :nombre
      t.timestamps
    end
  end

  def down
    drop_table :propietarios
  end
end
