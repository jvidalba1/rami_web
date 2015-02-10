class AddInchargeInfoToInmuebles < ActiveRecord::Migration
  def up
    add_column :inmuebles, :nombre_encargado, :string
    add_column :inmuebles, :celular_encargado, :string
    add_column :inmuebles, :email_encargado, :string
  end

  def down
    remove_column :inmuebles, :nombre_encargado
    remove_column :inmuebles, :celular_encargado
    remove_column :inmuebles, :email_encargado
  end
end
