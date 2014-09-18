class RemoveInmuebleIdFromIntermediarios < ActiveRecord::Migration
  def up
    remove_column :intermediarios, :inmueble_id
  end

  def down
    add_column :intermediarios, :inmueble_id, :integer
  end
end
