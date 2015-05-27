class InteresadosController < ApplicationController
  before_filter :authenticate_user!

  def index
    @interesados = Interesado.all
  end
end
