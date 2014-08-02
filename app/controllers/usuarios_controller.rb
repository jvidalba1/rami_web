class UsuariosController < ApplicationController

  before_filter :authenticate_user!, :except => [:new, :create]
  def index
    @users = User.all
    respond_to do |format|
      format.html # new.html.erb
      format.js
      format.pdf do
        render :pdf => "file"
      end
    end
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])

    if @user.save
      flash[:notice] = "Usuario creado exitosamente"
      redirect_to usuarios_path
    else
      flash[:alert] = "Error creando usuario, por favor verifique los datos ingresados"
      render :action => 'new'
    end
  end

end
