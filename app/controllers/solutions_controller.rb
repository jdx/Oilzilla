class SolutionsController < ApplicationController

  before_filter :find_sucky_thing

  def index
    @creative_how = @sucky_thing.creative_how if @sucky_thing.creative_how and @sucky_thing.creative_how.updated_at > DateTime.now - 1.hour
    @solutions = @sucky_thing.solutions
  end

  def create
    @solution = Solution.new(params[:solution])
    @solution.user = @current_user
    @solution.sucky_thing = @sucky_thing
    if @solution.save
      flash[:notice] = "Solution added"
      redirect_to :action => :index
    else
      render :action => :index
    end
  end

private

  def find_sucky_thing
    @sucky_thing = SuckyThing.find(params[:sucky_thing_id])
  end
end
