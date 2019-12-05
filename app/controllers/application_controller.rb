  class ApplicationController < ActionController::Base
  helper_method :current_cart

  def current_cart
    cart = session[:cart] ||= []
  end

end
