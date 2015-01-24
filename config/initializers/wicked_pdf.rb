module WickedPdfHelper
  WickedPdf.config = {
    wkhtmltopdf: "/usr/local/bin/wkhtmltopdf"
  }

  def wicked_pdf_stylesheet_link_tag(*sources)
    sources.collect { |source|
      "<style type='text/css'>#{Rails.application.assets.find_asset("#{source}.css")}</style>"
    }.join("\n").gsub(/url\(['"](.+)['"]\)(.+)/,%[url("#{wicked_pdf_image_location("\\1")}")\\2]).html_safe
  end

  def wicked_pdf_image_tag(img, options={})
    image_tag wicked_pdf_image_location(asset_data_base64(img)), options
  end

  def wicked_pdf_image_location(img)
    "file://#{Rails.root.join('app', 'assets', 'images', img)}"
  end

  def wicked_pdf_javascript_src_tag(source)
    "<script type='text/javascript'>#{Rails.application.assets.find_asset("#{source}.js").body}</script>"
  end

  def wicked_pdf_javascript_include_tag(*sources)
    sources.collect{ |source| wicked_pdf_javascript_src_tag(source) }.join("\n").html_safe
  end

  def asset_data_base64(path)
    asset = Rails.application.assets.find_asset(path)
    throw "Could not find asset '#{path}'" if asset.nil?
    base64 = Base64.encode64(asset.to_s).gsub(/\s+/, "")
    "data:#{asset.content_type};base64,#{Rack::Utils.escape(base64)}"
  end
end
