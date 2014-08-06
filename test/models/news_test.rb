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
end
