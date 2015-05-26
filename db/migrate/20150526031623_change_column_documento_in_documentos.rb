class ChangeColumnDocumentoInDocumentos < ActiveRecord::Migration
  def change
    rename_column :documentos, :documento, :file_name
  end
end
