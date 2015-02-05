class InmueblesController < ApplicationController

  before_filter :authenticate_user!
  before_filter :set_inmueble_by_id, only: [:set_status]

  def searcher
    @q = Inmueble.search(params[:q])
    @inmuebles = @q.result(distinct: true)
    @q.build_condition if @q.conditions.empty?
    @q.build_sort if @q.sorts.empty?
    # raise "oe"
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

    #@estudio = Estudio.new()
    #@estudio.documentos.build(:id => rand, :descripcion => "oeoe")

    respond_to do |format|
      format.js
    end
  end

  # GET /inmuebles
  # GET /inmuebles.json
  def index
    @inmuebles = Inmueble.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @inmuebles }
    end
  end

  def format_pdf
    @inmueble = Inmueble.find(params[:id])
  end

  def generate_pdf
    @inmueble = Inmueble.find(params[:id])
    if params[:inmueble]
      @inmueble.update_attributes(params[:inmueble])
    else
      @inmueble.remove_logo!
      @inmueble.save
    end
    respond_to do |format|
      format.pdf do
        render  pdf: "file",
                layout: 'layouts/layout.pdf.erb',
                header: { html: { template: "layouts/pdfs/header.pdf.erb" } },
                margin: { top: 55, bottom: 52 },
                footer: { html: { template: "layouts/pdfs/footer.pdf.erb" } },
                :orientation => 'Landscape'#,
                # :show_as_html => true
      end
    end
  end

  # GET /inmuebles/1
  # GET /inmuebles/1.json
  def show
    @inmueble = Inmueble.find(params[:id])
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @inmueble }
      format.pdf do
        render  pdf: "file",
                layout: 'layouts/layout.pdf.erb',
                show_as_html: params[:debug].present?
      end
    end
  end

  # GET /inmuebles/new
  # GET /inmuebles/new.json
  def new
    @inmueble = Inmueble.new

    3.times do
      interesados = @inmueble.interesados.build
      documentos = @inmueble.documentos.build
      intermediarios = @inmueble.intermediarios.build
    end
  end

  # POST /inmuebles
  # POST /inmuebles.json
  def create
    @inmueble = Inmueble.new(params[:inmueble])

    if @inmueble.save
      flash[:notice] = "Inmueble creado exitosamente"
      redirect_to @inmueble
    else
      render :action => 'new'
    end
  end

  # GET /inmuebles/1/edit
  def edit
    @inmueble = Inmueble.find(params[:id])
  end

  # def create

  #   @inmueble = Inmueble.new(params[:inmueble])
  #   if @inmueble.propietario_id.nil?
  #     @propietario = @inmueble.propietarios.build(params[:propietario])
  #     @paso = []

  #     if @propietario.save
  #       @paso << true
  #       @inmueble.propietario_id = @propietario.id

  #       if @inmueble.save
  #         #raise "fiu"
  #         @inmueble.documentos.map {|documento| documento.inmueble_id = @inmueble.id }
  #         @paso << true
  #         @propietario.update_attributes(:inmueble_id => @inmueble.id)
  #       else
  #         @paso << false
  #       end
  #     else
  #       @paso << false
  #     end

  #     if (@paso[0].eql? true) && (@paso[1].eql? true)
  #       flash[:notice] = "Inmueble y propietario creados exitosamente"
  #       redirect_to inmuebles_path
  #     elsif (@paso[0].eql? true) && (@paso[1].eql? false)
  #       flash[:alert] = "Error creando inmueble, por favor verifique los datos de ingreso"
  #       render 'new'
  #     elsif (@paso[0].eql? false)
  #       flash[:alert] = "Error creando propietario, por favor verifique los datos de ingreso"
  #       render 'new'
  #     end
  #   else
  #     if @inmueble.save
  #       @propietario = Propietario.find(@inmueble.propietario_id)
  #       @propietario.update_attributes(:inmueble_id => @inmueble.id)
  #       flash[:notice] = "Inmueble creado exitosamente"
  #       redirect_to inmuebles_path
  #     else
  #       flash[:alert] = "Error creando inmueble, por favor verifique los datos de ingreso"
  #       render 'new'
  #     end
  #   end

  # end

  # PUT /inmuebles/1
  # PUT /inmuebles/1.json
  def update
    @inmueble = Inmueble.find(params[:id])

    if @inmueble.update_attributes(params[:inmueble])
      flash[:notice] = "Inmueble fue actualizado exitosamente."
      redirect_to @inmueble
    else
      flash[:alert] = "Error en los datos"
      render :action => 'edit'
    end

    # if params[:inmueble][:propietario_id].nil?

    #   @propietario = @inmueble.propietarios.build(params[:propietario])
    #   @paso = []
    #   if @propietario.save
    #     @paso << true
    #     @last_propietario = Propietario.find(@inmueble.propietario_id)
    #     params[:inmueble][:propietario_id] = @propietario.id
    #     if @inmueble.update_attributes(params[:inmueble])
    #       @paso << true
    #       @last_propietario.update_attributes(:inmueble_id => -1)
    #       @propietario.update_attributes(:inmueble_id => @inmueble.id)
    #     else
    #       @paso << false
    #     end
    #   else
    #     @paso << false
    #   end

    #   if (@paso[0].eql? true) && (@paso[1].eql? true)
    #     flash[:notice] = "Inmueble y propietario actualizados exitosamente"
    #     redirect_to inmuebles_path
    #   elsif (@paso[0].eql? true) && (@paso[1].eql? false)
    #     flash[:alert] = "Error actualizando inmueble, por favor verifique los datos de ingreso"
    #     render 'new'
    #   elsif (@paso[0].eql? false)
    #     flash[:alert] = "Error actualizando propietario, por favor verifique los datos de ingreso"
    #     render 'new'
    #   end
    # else
    #   @last_propietario = Propietario.find(@inmueble.propietario_id)
    #   if @inmueble.update_attributes(params[:inmueble])
    #     @propietario = Propietario.find(@inmueble.propietario_id)
    #     @propietario.update_attributes(:inmueble_id => @inmueble.id)
    #     @last_propietario.update_attributes(:inmueble_id => -1)
    #     flash[:notice] = "Inmueble fue actualizado exitosamente."
    #     redirect_to @inmueble
    #   else
    #     flash[:alert] = "Error en los datos"
    #     render 'edit'
    #   end
    # end
  end

  # DELETE /inmuebles/1
  # DELETE /inmuebles/1.json
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
