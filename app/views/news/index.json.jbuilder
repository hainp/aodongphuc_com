json.array!(@all_news) do |news|
  json.extract! news, :id, :featured_image, :title, :content, :description, :created_at
  json.url news_url(news, format: :json)
end
