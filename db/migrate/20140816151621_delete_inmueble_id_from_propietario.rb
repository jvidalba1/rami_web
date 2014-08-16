class DeleteInmuebleIdFromPropietario < ActiveRecord::Migration
  def up
    remove_column :propietarios, :inmueble_id
  end

  def down
    add_column :propietarios, :inmueble_id, :integer
  end
end
