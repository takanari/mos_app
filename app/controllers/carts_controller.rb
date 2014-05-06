class CartsController < ApplicationController
  before_action :set_cart, only: [:show, :edit, :update, :destroy]

  # GET /carts
  def index
    @carts = Cart.all
  end

  # GET /carts/1
  def show
  end

  # GET /carts/new
  def new
    @cart = Cart.new
  end

  # GET /carts/1/edit
  def edit
  end

  # POST /carts
  def create
    @cart = Cart.new(cart_params)
    if @cart.save 
      #redirect_to @cart, notice: 'Cart was successfully created.'
      redirect_to carts_url
    else
      render :new
    end
  end

  # PATCH/PUT /carts/1
  def update
    if @cart.update(cart_params)
      redirect_to carts_url
    else
      render :edit
    end
  end

  # DELETE /carts/1
  def destroy
    @cart.destroy
    redirect_to carts_url, notice: 'カートから正常に削除されました。'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cart
      @cart = Cart.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def cart_params
      params.require(:cart).permit(:quantity, :mo_id)
    end
end
