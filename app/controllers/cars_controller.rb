class CarsController < ApplicationController
  before_filter :require_user

  def create
    @car = Car.new(params[:car])
    @car.user = current_user
    if @car.save
      flash[:notice] = "Car added!"
      redirect_back_or_default :controller => :home
    else
      flash[:notice] = "Error adding car"
      redirect_back_or_default :controller => :home
    end
  end
  
  def index
    @cars = current_user.cars
  end
  
  def new
    @car = Car.new
    render :partial => "new"
  end
  
  def show
    @car = Car.find(params[:id])
    render :partial => "show"
  end
end
