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

  def show
    @user = @current_user
  end

  def edit
    @user = @current_user
  end

  def update
    @user = @current_user
    if @user.update_attributes(params[:user])
      flash[:notice] = "Account updated!"
      redirect_to account_url
    else
      render :action => :edit
    end
  end
end
