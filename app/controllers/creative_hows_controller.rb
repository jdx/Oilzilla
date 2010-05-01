class CreativeHowsController < ApplicationController

  before_filter :find_sucky_thing

  def show
    if @sucky_thing.creative_how and @sucky_thing.creative_how.updated_at < DateTime.now - 1.hour
      @sucky_thing.creative_how.delete 
      @sucky_thing.creative_how = nil
    end
  end

  def create
    @sucky_thing.creative_how.destroy if @sucky_thing.creative_how
    @creative_how = CreativeHow.new(params[:creative_how])
    @creative_how.user = @current_user
    @creative_how.sucky_thing = @sucky_thing
    if @creative_how.save
      flash[:notice] = "Creative how accepted!"
      redirect_to sucky_thing_solutions_path(@sucky_thing)
    else
      render :action => :show
    end
  end

private

  def find_sucky_thing
    @sucky_thing = SuckyThing.find(params[:sucky_thing_id])
  end
end
