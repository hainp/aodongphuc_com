class PagesController < ApplicationController
  
  # GET /pages/1
  # GET /pages/1.json
  def show
    @page = Page.find_by(id: params[:id])
  end
end
