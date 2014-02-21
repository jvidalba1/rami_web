class AddInmuebleIdToPropietarios < ActiveRecord::Migration
  def up
    add_column :propietarios, :inmueble_id, :integer
  end
  
  def down
    remove_column :propietarios, :inmueble_id
  end
end
