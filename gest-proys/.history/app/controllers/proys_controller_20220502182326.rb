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
  end

  def index
  end
end
