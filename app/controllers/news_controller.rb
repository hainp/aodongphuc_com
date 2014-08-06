class NewsController < ApplicationController

  # GET /news/index
  def index
    offset = params[:offset] || 0
    @all_news = News.order(created_at: :desc).limit(Settings.news_per_page).offset(offset)

    respond_to do | format |
      format.html { render :index }
      format.json { render :index }
    end
  end
  
  # GET /news/:id
  def show
    @news = News.find_by(id: params[:id])
    @latest = News.where.not(id: @news).order(created_at: :desc).limit(3)
  end
end
