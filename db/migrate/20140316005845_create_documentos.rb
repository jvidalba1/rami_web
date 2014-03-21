class CreateDocumentos < ActiveRecord::Migration
  def up
    create_table "documentos", :force => true do |t|
      t.string   "descripcion"
      t.string   "documento"
      t.integer  "inmueble_id"
      t.datetime "created_at",    :null => false
      t.datetime "updated_at",    :null => false
    end
  end

  def down
    drop_table :documentos
  end
end
