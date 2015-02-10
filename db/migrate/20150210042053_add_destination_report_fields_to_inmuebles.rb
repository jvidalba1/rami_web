class AddDestinationReportFieldsToInmuebles < ActiveRecord::Migration
  def up
    add_column :inmuebles, :trato_destino_reporte, :integer
    add_column :inmuebles, :nombre_destino_reporte, :string
    add_column :inmuebles, :cargo_destino_reporte, :string
  end

  def down
    remove_column :inmuebles, :trato_destino_reporte
    remove_column :inmuebles, :nombre_destino_reporte
    remove_column :inmuebles, :cargo_destino_reporte
  end
end
