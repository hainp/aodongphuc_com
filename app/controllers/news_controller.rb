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
end
