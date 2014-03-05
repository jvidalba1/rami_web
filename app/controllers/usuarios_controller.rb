class UsuariosController < ApplicationController

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

end
