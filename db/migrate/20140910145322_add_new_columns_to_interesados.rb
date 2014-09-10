class AddNewColumnsToInteresados < ActiveRecord::Migration
  def up
    add_column :interesados, :email, :string
    add_column :interesados, :observaciones, :text
  end

  def down
    remove_column :interesados, :email
    remove_column :interesados, :observaciones
  end
end
