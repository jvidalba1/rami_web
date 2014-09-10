class CreateInmueblesAndInteresados < ActiveRecord::Migration
  def up
    create_table :inmuebles_interesados, id: false do |t|
      t.belongs_to :inmueble
      t.belongs_to :interesado
    end
  end

  def down
    drop_table :inmuebles_interesados
  end
end
