class HomeController < ApplicationController
  skip_before_filter :require_user
  def index
      @user = User.new
  end
end
