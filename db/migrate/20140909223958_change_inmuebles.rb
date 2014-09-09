class ChangeInmuebles < ActiveRecord::Migration
  def up
    remove_column :inmuebles, :codigo_inmueble
    add_column :inmuebles, :nombre_inmueble, :string
  end

  def down
    add_column :inmuebles, :codigo_inmueble, :integer
    remove_column :inmuebles, :nombre_inmueble
  end
end
