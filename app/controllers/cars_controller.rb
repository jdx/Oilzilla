class CarsController < ApplicationController
  before_filter :require_user

  def create
    @car = Car.new(params[:car])
    @car.make = Make.find(:first, :conditions => { :name => @car.make_string })
    @car.make = Make.new(:name => @car.make_string) unless @car.make
    @car.model = @car.make.models.find(:first, :conditions => { :name => @car.model_string })
    @car.model = Model.new(:name => @car.model_string, :make => @car.make) unless @car.model
    @car.auto_year = @car.model.auto_years.find(:first, :conditions => { :name => @car.auto_year_int })
    @car.auto_year = AutoYear.new(:name => @car.auto_year_int, :model => @car.model) unless @car.auto_year
    @car.trim = @car.auto_year.trims.find(:first, :conditions => { :name => @car.trim_string })
    @car.trim = Trim.new(:name => @car.trim_string, :auto_year => @car.auto_year) unless @car.trim
    @car.users << current_user
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
  end
  
  def show
    @car = Car.find(params[:id])
  end
end
