class WelcomeController < ApplicationController
  
  # GET /
  def index    
    # Use array.in_group_of(number_of_columns)
    @categories = Category.all
    @products = Product.all
  end
end
