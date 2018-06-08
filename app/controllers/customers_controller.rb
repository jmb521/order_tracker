class CustomersController < ApplicationController

  def index
    @customers = Customer.all
  end

  def show
    @customer = Customer.find(params[:id])
  end

  def new
    @customer = Customer.new
  end

  def create

    @customer = Customer.create(customer_params)
    redirect_to customer_path(@customer)
  end


  def edit
    @customer = Customer.find(params[:id])
  end

  def update
    @customer = Customer.find(params[:id])
    @customer.update(customer_params)
    if @customer.save
      @customer.save
      redirect_to customer_path(@customer)
    else
      redirect_to edit_customer_path(@customer)
    end



  end


  private

  def customer_params
    params.require(:customer).permit(:name, :phone)
  end
end
