class HomeController < ApplicationController
  def index
    redirect_back_or_default :controller => :cars
  end
end
