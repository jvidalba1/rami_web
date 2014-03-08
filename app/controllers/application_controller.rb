class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :authenticate_user!
  before_filter :pdf_config

  def pdf_config
    WickedPdf.config = {
        :orientation  => 'Landscape',
        :exe_path => '/usr/local/bin/wkhtmltopdf',
        :layout => "pdf.html",
        #:no_background => false,
        #:image => true,
        #:header => {
        #              :html => {
        #                  :template=> 'layouts/pdf_header.html.erb',
        #                          :layout   => "pdf_header.html",
        #                        }
        #}
        #:footer => {
        #    :left => "Visionamos - SPS",
        #    #:left => "#{Entidad.find(@current_user.entidad).nombre}",
        #    :right => "#{Time.now}",
        #    :font_size => 5
        #}
    }
  end
end
