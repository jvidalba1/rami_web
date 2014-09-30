class AddLogoToInmuebles < ActiveRecord::Migration
  def change
    add_column :inmuebles, :logo, :string
  end
end
