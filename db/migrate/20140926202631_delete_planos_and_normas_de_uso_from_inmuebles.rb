class DeletePlanosAndNormasDeUsoFromInmuebles < ActiveRecord::Migration
  def up
    remove_column :inmuebles, :planos
    remove_column :inmuebles, :normas_de_uso
  end

  def down
    add_column :inmuebles, :planos, :string
    add_column :inmuebles, :normas_de_uso, :string
  end
end
