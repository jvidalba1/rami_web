class RemoveQuienRefiereFromInmuebles < ActiveRecord::Migration
  def up
    remove_column :inmuebles, :nombre_agente
    remove_column :inmuebles, :quien_refiere
    remove_column :inmuebles, :telefono
    remove_column :inmuebles, :celular
    remove_column :inmuebles, :email
  end

  def down
    add_column :inmuebles, :nombre_agente, :string
    add_column :inmuebles, :quien_refiere, :string
    add_column :inmuebles, :telefono, :string
    add_column :inmuebles, :celular, :string
    add_column :inmuebles, :email, :string
  end
end
