class AddIndexesToInmueblesInteresados < ActiveRecord::Migration
  def change
    add_index :inmuebles_interesados, [:inmueble_id, :interesado_id]
  end
end
