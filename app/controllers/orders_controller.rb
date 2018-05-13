class OrdersController < ApplicationController

  def index
    @orders = Order.all
  end

  def show
    @order = Order.find(order_params)
  end

  def create

  end

  def new

  end

  def edit
    @order = Order.find(order_params)
  end

  def destroy
    if @order
      @order.destroy
    end
  end

  private

  def order_params
    params.require(:orders).permit(:status, :customer_id)
  end
end
