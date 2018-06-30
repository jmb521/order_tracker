class ItemsController < ApplicationController
  def index
    @items = Item.all
  end

  def show
    @item = Item.find(params[:id])
  end

  def create
    @item = Item.create(item_params)
  end

  def new
    @item = Item.new

  end

  def edit
    @item = Item.find(params[:id])
  end
  def update
    @item = Item.find(params[:id])
    @item.update(item_params)
    redirect_to item_path(@item)
  end
  def destroy
    if @item
      @item.destroy
    end
  end

  private

  def item_params
    params.require(:item).permit(:name, :ordered_from, :size, :description)
  end
end
