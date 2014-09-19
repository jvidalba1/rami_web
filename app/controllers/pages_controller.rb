#encoding: UTF-8
require 'csv'
class PagesController < ApplicationController

  before_filter :authenticate_user!, only: [:conf]

  def home
  end

  def conf
  end

  def import
    if request.post? && params[:file].present?
      @result = []

      begin
        @result << csv_archivo(params[:file])
      rescue
        redirect_to :back, :alert => "Ocurrió un error, revise los datos por favor" and return
      end

      if @result.any?
        flash.now[:alert] = "Por favor revise los datos"
        redirect_to conf_pages_path
      else
        flash[:notice] = "Se importaron todos los datos exitosamente"
        redirect_to conf_pages_path
      end
    else
      flash[:alert] = "Seleccione un archivo"
      render :action => 'conf'
    end
  end

  private

  def create_directory_if_not_exists(directory_name)
    Dir.mkdir(directory_name) unless File.exists?(directory_name)
  end

  def sanitize_filename(filename)
    filename.strip.tap do |name|
      # get only the filename, not the whole path
      name.sub! /\A.*(\\|\/)/, ''
      # Finally, replace all non alphanumeric, underscore
      # or periods with underscore
      name.gsub! /[^\w\.\-]/, '_'
    end
  end

  def csv_archivo(file)
    @errores = []
    CSV.foreach(file.path, :headers => true) do |row|
      @errores << Inmueble.create(row.to_hash)
    end
    @errores.each { |x| ActiveRecord::Rollback if x.errors.any? }
    @errores.reject! { |x| x.errors.empty? }
    @errores
  end

end
