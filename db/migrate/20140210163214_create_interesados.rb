class CreateInteresados < ActiveRecord::Migration
  def up
    create_table :interesados do |t|
      t.string :nombre
      t.string :telefono
      t.string :celular
      t.timestamps
    end
  end

  def down
    drop_table :interesados
  end
end
