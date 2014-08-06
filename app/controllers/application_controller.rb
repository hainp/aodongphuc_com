class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_filter :set_items_for_menu, :set_social_channels
  before_action :set_locale

  def set_items_for_menu
    @menus = Menu.all
  end

  def set_social_channels
    @channels = SocialChannel.all
  end

  def set_locale
    I18n.locale = params[:locale] || I18n.default_locale
  end
end
