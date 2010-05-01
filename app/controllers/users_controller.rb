class UsersController < ApplicationController
  skip_before_filter :require_user, :only => [:new, :create]

  def create
    @user = User.new(params[:user])
    @user.password = "whg431"
    @user.password_confirmation = "whg431"
    if @user.save
      flash[:notice] = "Account registered!"
      redirect_back_or_default :controller => :show
    else
      render :action => :new
    end
  end
  
  def new
    @user = User.new
  end
end
