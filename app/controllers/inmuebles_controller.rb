class InmueblesController < ApplicationController

  before_filter :authenticate_user!

  # GET /inmuebles
  # GET /inmuebles.json
  def index
    @inmuebles = Inmueble.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @inmuebles }
    end
  end

  # GET /inmuebles/1
  # GET /inmuebles/1.json
  def show
    @inmueble = Inmueble.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @inmueble }
    end
  end

  # GET /inmuebles/new
  # GET /inmuebles/new.json
  def new
    @inmueble = Inmueble.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @inmueble }
    end
  end

  # GET /inmuebles/1/edit
  def edit
    @inmueble = Inmueble.find(params[:id])
  end

  # POST /inmuebles
  # POST /inmuebles.json
  def create
    @inmueble = Inmueble.new(params[:inmueble])
    
    if @inmueble.propietario_id.nil?
      @propietario = @inmueble.propietarios.build(params[:propietario])
      raise "oelo"
      @paso = []
      if @propietario.save
        @paso << true
        @inmueble.propietario_id = @propietario.id
        if @inmueble.save
          @paso << true
        else
          @paso << false
        end
      else
        @paso << false
      end
      
      if (@paso[0].eql? true) && (@paso[1].eql? true)
        flash[:notice] = "Inmueble creado exitosamente"
        redirect_to inmuebles_path
      elsif (@paso[0].eql? true) && (@paso[1].eql? false)
        flash[:alert] = "Error creando inmueble, por favor verifique los datos de ingreso"
        render 'new'
      elsif (@paso[0].eql? false)
        flash[:alert] = "Error creando propietario, por favor verifique los datos de ingreso"
        render 'new'
      end
    else
      if @inmueble.save
        flash[:notice] = "Inmueble creado exitosamente"
        redirect_to inmuebles_path
      else
        flash[:alert] = "Error creando inmueble, por favor verifique los datos de ingreso"
        render 'new'
      end    
    end
    
  end

  # PUT /inmuebles/1
  # PUT /inmuebles/1.json
  def update
    @inmueble = Inmueble.find(params[:id])

    respond_to do |format|
      if @inmueble.update_attributes(params[:inmueble])
        format.html { redirect_to @inmueble, notice: 'Inmueble was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @inmueble.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /inmuebles/1
  # DELETE /inmuebles/1.json
  def destroy
    @inmueble = Inmueble.find(params[:id])
    @inmueble.destroy

    respond_to do |format|
      format.html { redirect_to inmuebles_url }
      format.json { head :no_content }
    end
  end
end
