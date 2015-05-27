class ChangeColumnDocumentoInDocumentos < ActiveRecord::Migration
  def up
    rename_column :documentos, :documento, :file_name
  end

  def down
    rename_column :documentos, :file_name, :documento
  end
end
