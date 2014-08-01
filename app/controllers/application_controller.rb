class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_filter :set_items_for_menu, :set_social_channels

  def set_items_for_menu
    @menus = Menu.all
  end

  def set_social_channels
    @channels = SocialChannel.all
  end
end
