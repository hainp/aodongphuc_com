class OrdersController < ApplicationController

  # GET /orders/new
  def new
    @orders = Order.new
  end
  
  # POST /orders
  # POST /orders.json
  def create
    @order = Order.new(orders_params)

    respond_to do |format|
      if @order.save
        format.html { redirect_to @order, notice: 'Order was successfully created.' }
        format.json { render :show, status: :created, location: @order }
      else
        format.html { render :new }
        format.json { render json: @order.errors, status: :unprocessable_entity }
      end
    end
  end
end
