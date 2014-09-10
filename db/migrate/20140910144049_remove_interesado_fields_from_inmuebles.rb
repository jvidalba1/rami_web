class RemoveInteresadoFieldsFromInmuebles < ActiveRecord::Migration
  def up
    remove_column :inmuebles, :nombre_interesado
    remove_column :inmuebles, :telefono_interesado
    remove_column :inmuebles, :celular_interesado
    remove_column :inmuebles, :email_interesado
    remove_column :inmuebles, :observaciones_interesado
  end

  def down
    add_column :inmuebles, :nombre_interesado, :string
    add_column :inmuebles, :telefono_interesado, :string
    add_column :inmuebles, :celular_interesado, :string
    add_column :inmuebles, :email_interesado, :string
    add_column :inmuebles, :observaciones_interesado, :string
  end
end
