class UsersController < ApplicationController
  skip_before_filter :require_user, :only => [:new, :create]

  def create
    @user = User.new(params[:user])
    password = "whg431"
    @user.password = password
    @user.password_confirmation = password
    if @user.save
      Notifier.deliver_signup_notification(@user, password)
      flash[:notice] = "Account registered!"
      redirect_back_or_default :controller => :cars
    else
      render :action => :new
    end
  end
  
  def new
    @user = User.new
  end
end
