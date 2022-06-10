class LibrosController < ApplicationController
  before_action :set_libro, only: [:show, :edit, :update, :destroy]

  def edit
  end

  def index
      @libs = Libro.all
      @q = Libro.ransack(params[:q])
      @libros = @q.result(distinct: true).page(params[:page]).per(6)
  end

  def new
    @libro = Libro.new
  end

  def show
  end

  def create 
      @libro = Libro.create(libro_params)

      respond_to do |format|
          if @libro.save 
              format.html { redirect_to libro_path(@libro), notice: "Libro creado OK"}
          else
              format.html { render :new, status: :unprocessable_entity }
          end
      end
  end

  def update 
      respond_to do |format|
          if @libro.update(libro_params) 
              format.html { redirect_to libro_path(@libro), notice: "Libro modificado OK"}
          else
              format.html { render :edit, status: :unprocessable_entity }
          end
      end
      
  end

  def destroy 
      @libro.destroy

      respond_to do |format|
          format.html { redirect_to root_path, alert: "Libro fue eliminado" }
      end
  end

  private 

  def set_libro
      @libro = Libro.find(params[:id])
  end

  def libro_params 
      params.require(:libro).permit(:title, :descrip, :author, :fechprestm, :fechdevol,:status, :image_url)
  end

end



