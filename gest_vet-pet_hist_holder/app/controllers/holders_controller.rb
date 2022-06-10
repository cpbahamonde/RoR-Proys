class HoldersController < ApplicationController
  before_action :set_holder, only: %i[ show edit update destroy ]

  # GET /holders or /holders.json
  def index
    @holders = Holder.eager_load(:pets)
  end

  # GET /holders/1 or /holders/1.json
  def show
    @holders = Holder.eager_load(:pets)
  end

  # GET /holders/new
  def new
    @holder = Holder.new
  end

  # GET /holders/1/edit
  def edit
  end

  # POST /holders or /holders.json
  def create
    @holder = Holder.new(holder_params)

    respond_to do |format|
      if @holder.save
        format.html { redirect_to holder_url(@holder), notice: "Dueño creado exitosamente" }
        format.json { render :show, status: :created, location: @holder }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @holder.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /holders/1 or /holders/1.json
  def update
    respond_to do |format|
      if @holder.update(holder_params)
        format.html { redirect_to holder_url(@holder), notice: "Dueño modificado exitosamente" }
        format.json { render :show, status: :ok, location: @holder }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @holder.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /holders/1 or /holders/1.json
  def destroy
    @holder.destroy

    respond_to do |format|
      format.html { redirect_to holders_url, notice: "Dueño eliminado exitosamente" }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_holder
      @holder = Holder.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def holder_params
      params.require(:holder).permit(:name, :phone, :address, :email)
    end
end
