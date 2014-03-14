class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :authenticate_user!
  before_filter :pdf_config

  def pdf_config
    WickedPdf.config = {
        :orientation  => 'Landscape',
        :exe_path => '/usr/local/bin/wkhtmltopdf',
        :layout => "pdf.html",
        :header => {  :html => { :template=> 'pdf/header.pdf.erb'},
                      :spacing => -35
                   },
        :footer =>  { :html =>  {:template => 'pdf/footer.pdf.erb'},
                      :spacing => -40
                    }
    }
  end
end
