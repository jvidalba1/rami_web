class AddStatusToInmuebles < ActiveRecord::Migration
  def up
    add_column :inmuebles, :status, :integer
  end

  def down
    remove_column :inmuebles, :status
  end
end
