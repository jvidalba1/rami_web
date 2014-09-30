class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :authenticate_user!
  before_filter :pdf_config

  def pdf_config
    WickedPdf.config = {
      wkhtmltopdf: "/usr/local/bin/wkhtmltopdf",
      header: { html: { template: 'pdf/header.pdf.erb'}, spacing: 0 },
      page_page_size: 'Legal',
      layout: 'layout.pdf.erb',
      orientation: 'Landscape',
      margin: {
        top: 2
      }
    }
  end
end
