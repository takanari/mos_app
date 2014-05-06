class MosController < ApplicationController
  before_action :set_mo, only: [:show, :edit, :update, :destroy]

  # GET /mos
  def index
    @mos = Mo.all
  end

  # GET /mos/1
  def show
  end

  # GET /mos/new
  def new
    @mo = Mo.new
  end

  # GET /mos/1/edit
  def edit
  end

  # POST /mos
  def create
    @mo = Mo.new(mo_params)

    if @mo.save
      redirect_to @mo, notice: 'Mo was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /mos/1
  def update
    if @mo.update(mo_params)
      redirect_to @mo, notice: 'Mo was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /mos/1
  def destroy
    @mo.destroy
    redirect_to mos_url, notice: 'Mo was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mo
      @mo = Mo.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def mo_params
      params.require(:mo).permit(:name, :price, :memo)
    end
end
