class InteresadosController < ApplicationController
  before_filter :authenticate_user!

  def index
    @interesados = Interesado.all
  end

  def new
    @interesado = Interesado.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @interesado }
    end
  end

  def edit
    @interesado = Interesado.find(params[:id])
  end

  def create
    @interesado = Interesado.new(params[:interesado])

    if @interesado.save
      flash[:notice] = "Interesado creado exitosamente"
      redirect_to interesados_path
    else
      flash[:alert] = "Error creando interesado, por favor verifique los datos de ingreso"
      render 'new'
    end

  end

  def update
    @interesado = Interesado.find(params[:id])

    if @interesado.update_attributes(params[:interesado])
      flash[:notice] = "Interesado fue actualizado exitosamente."
      redirect_to interesados_path
    else
      flash[:alert] = "Error en los datos, por favor verifique"
      render 'edit'
    end
  end

  def destroy
    @interesado = Interesado.find(params[:id])
    @interesado.destroy

    respond_to do |format|
      flash[:notice] = "Interesado eliminado exitosamente"
      format.html { redirect_to interesados_url }
      format.json { head :no_content }
    end
  end
end
