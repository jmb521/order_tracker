class ItemsController < ApplicationController
  def index
    @items = Item.all
  end

  def show
    @item = Item.find(params[:id])
  end

  def create
    @item = Item.create(order_params)
  end

  def new
    

  end

  def edit
    @item = Item.find(order_params)
  end

  def destroy
    if @item
      @item.destroy
    end
  end

  private

  def order_params
    params.require(:orders).permit(:status, :customer_id)
  end
end
