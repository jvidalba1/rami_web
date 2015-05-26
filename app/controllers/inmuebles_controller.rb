class InmueblesController < ApplicationController

  before_filter :authenticate_user!
  before_filter :set_inmueble_by_id, only: [:set_status]

  def searcher
    @q = Inmueble.search(params[:q])
    @inmuebles = @q.result(distinct: true)
    @q.build_condition if @q.conditions.empty?
    @q.build_sort if @q.sorts.empty?
  end

  def set_status
    @inmueble.update_attributes(status: params[:status].to_i)

    respond_to do |format|
      format.js
    end
  end

  def documentos
    @inmueble = Inmueble.new
    @inmueble.documentos.build

    respond_to do |format|
      format.js
    end
  end

  def index
    @inmuebles = Inmueble.all

    respond_to do |format|
      format.html
      format.json { render json: @inmuebles }
    end
  end

  def format_pdf
    @inmueble = Inmueble.find(params[:id])
    @inmueble.remove_logo!
    @inmueble.save
  end

  def generate_pdf
    @inmueble = Inmueble.find(params[:id])
    if params[:inmueble]
      @inmueble.update_attributes(params[:inmueble])
    else
      @inmueble.remove_logo!
      @inmueble.save
    end
    # Documents for pdf report
    @img_inmueble_1 = Documento.find_by_inmueble_id_and_descripcion(@inmueble.id, "imagen_inmueble_1").try(:documento).to_s
    @img_inmueble_2 = Documento.find_by_inmueble_id_and_descripcion(@inmueble.id, "imagen_inmueble_2").try(:documento).to_s
    @img_mapa       = Documento.find_by_inmueble_id_and_descripcion(@inmueble.id, "localizacion_google_maps").try(:documento).to_s
    @img_planos     = Documento.find_by_inmueble_id_and_descripcion(@inmueble.id, "imagen_adicional_1").try(:documento).to_s
    @img_adicional  = Documento.find_by_inmueble_id_and_descripcion(@inmueble.id, "imagen_adicional_2").try(:documento).to_s

    respond_to do |format|
      format.pdf do
        render  pdf: "file",
                layout: 'layouts/layout.pdf.erb',
                # header: { html: { template: "layouts/pdfs/header.pdf.erb" } },
                margin: { top: 0, bottom: 0, left: 0, right: 0},
                # footer: { html: { template: "layouts/pdfs/footer.pdf.erb" } },
                :orientation => 'Landscape'#,
                #:show_as_html => true
      end
    end
  end

  def show
    @inmueble = Inmueble.find(params[:id])
    respond_to do |format|
      format.html
      format.json { render json: @inmueble }
      format.pdf do
        render  pdf: "file",
                layout: 'layouts/layout.pdf.erb',
                show_as_html: params[:debug].present?
      end
    end
  end

  def new
    @inmueble = Inmueble.new
    @documentos = []
    5.times do
      @documentos << @inmueble.documentos.build
      intermediarios = @inmueble.intermediarios.build
    end
  end

  def create
    @inmueble = Inmueble.new(params[:inmueble])
    @interesados = Interesado.where(:id => params[:interesados][:ids])
    @inmueble.interesados << @interesados
    if @inmueble.save
      flash[:notice] = "Inmueble creado exitosamente"
      redirect_to @inmueble
    else
      render :action => 'new'
    end
  end

  def edit
    @inmueble = Inmueble.find(params[:id])
  end

  def update
    @inmueble = Inmueble.find(params[:id])
    @interesados = Interesado.where(:id => params[:interesados][:ids])
    @inmueble.interesados.destroy_all
    @inmueble.interesados << @interesados

    if @inmueble.update_attributes(params[:inmueble])
      flash[:notice] = "Inmueble fue actualizado exitosamente."
      redirect_to @inmueble
    else
      flash[:alert] = "Error en los datos"
      render :action => 'edit'
    end
  end

  def destroy
    @inmueble = Inmueble.find(params[:id])
    @inmueble.destroy

    respond_to do |format|
      flash[:notice] = "Inmueble eliminado exitosamente"
      format.html { redirect_to inmuebles_url }
      format.json { head :no_content }
    end
  end

  private

  def set_inmueble_by_id
    @inmueble = Inmueble.find(params[:id].to_i)
  end
end
