class CreateInmueblesAndIntermediarios < ActiveRecord::Migration
  def up
    create_table :inmuebles_intermediarios, id: false do |t|
      t.belongs_to :inmueble
      t.belongs_to :intermediario
    end
  end

  def down
    drop_table :inmuebles_intermediarios
  end
end
