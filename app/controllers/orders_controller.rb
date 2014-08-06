class OrdersController < ApplicationController

  # GET /orders/new
  def new
    @orders = Order.new
  end

  # POST /orders
  # POST /orders.json
  def create
    @order = Order.new(order_params)

    respond_to do |format|
      if @order.save
        flash.now[:notice] = 'Order was successfully created.'
        format.html { render :new }
        format.json { render :new, status: :created, location: @order }
      else
        format.html { render :new }
        format.json { render json: @order.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    def order_params
      params.require(:order).permit(:name, :title, :phone, :email, :content)
    end
end
