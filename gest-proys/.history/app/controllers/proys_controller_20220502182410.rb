class ProysController < ApplicationController
  def _nav-bar
  end

  def crear
  end

  def create
    @proy = Proy.create(proy_params)  

    # Redireccionamos a la vista principal con mensaje 
    respond_to do |format|
     
        if @proy.save 
            format.html { redirect_to proys_hist_url(@proy), notice: "Su Proyecto fue creado existosamente !" }   
        else
            format.html { render :create, status: :unprocessable_entity }
        end

     end
  end

  def hist
        # @proys = Proy.all
    if params[:estado].present?
      @proys = Proy.where('estado = ?', params[:estado])
    else
      # @proys = Proy.find_valid
      # @proys = Proy.all
      @proys = Proy.all.order("created_at DESC")
    end

  end

  def index
  end
    # Parámetros o campos de la base de datos 
  private
  def proy_params
  	params.permit(:nombre, :descrip, :fechini, :fechfin, :estado)
  end
end
