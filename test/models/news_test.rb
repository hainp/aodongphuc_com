require 'test_helper'

class NewsTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "select 2 news" do
    @news_list = News.order(created_at: :desc).limit(2)
    assert_equal 2, @news_list.size
  end

  test "select 2 news continuosly" do
    @news_list = News.order(created_at: :desc).limit(2)
    @news_list += News.order(created_at: :desc).limit(2).offset(2)
    assert_equal 4, @news_list.size
  end
  
  test "find a news by id" do
    @news = News.find_by_id(1)
    @nil_news = News.find_by_id(100)
    assert_equal 1, @news.id
    assert_nil @nil_news
  end
end
