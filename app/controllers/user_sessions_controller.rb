class UserSessionsController < ApplicationController
  before_filter :require_no_user, :only => :create
  before_filter :require_user, :only => :destroy

  def create
    @user_session = UserSession.new(params[:user_session])
    if @user_session.save
      flash[:notice] = "Login successful!"
      redirect_back_or_default :controller => :home
    else
      flash[:notice] = "Login unsuccessful"
      redirect_back_or_default :controller => :home
    end
  end

  def destroy
    current_user_session.destroy
    flash[":notice"] = "Logout successful"
    redirect_back_or_default new_user_url
  end
  
  def show
    redirect_back_or_default new_user_url
  end
end
