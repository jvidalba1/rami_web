class PropietariosController < ApplicationController

  before_filter :authenticate_user!

  def index
    @propietarios = Propietario.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @propietarios }
    end
  end

  # GET /propietarios/1
  # GET /propietarios/1.json
  def show
    @propietario = Propietario.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @propietario }
    end
  end

  # GET /propietarios/new
  # GET /propietarios/new.json
  def new
    @propietario = Propietario.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @propietario }
    end
  end

  # GET /propietarios/1/edit
  def edit
    @propietario = Propietario.find(params[:id])
  end

  # POST /propietarios
  # POST /propietarios.json
  def create
    @propietario = Propietario.new(params[:propietario])
    
    if @propietario.save
      flash[:notice] = "Propietario creado exitosamente"
      redirect_to propietarios_path
    else
      flash[:alert] = "Error creando propietario, por favor verifique los datos de ingreso"
      render 'new'
    end  
    
  end

  # PUT /propietarios/1
  # PUT /propietarios/1.json
  def update
    @propietario = Propietario.find(params[:id])

    if @propietario.update_attributes(params[:propietario])
      flash[:notice] = "Propietario fue actualizado exitosamente."
      redirect_to @propietario
    else
      flash[:alert] = "Error en los datos"
      render 'edit'
    end
  end

  # DELETE /propietarios/1
  # DELETE /propietarios/1.json
  def destroy
    @propietario = Propietario.find(params[:id])
    @propietario.destroy
    
    respond_to do |format|
      flash[:notice] = "Propietario eliminado exitosamente"
      format.html { redirect_to propietarios_url }
      format.json { head :no_content }
    end
  end

end
