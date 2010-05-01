class WhyItSucksExplanationsController < ApplicationController

  before_filter :find_sucky_thing

  def new
    if @sucky_thing.why_it_sucks_explanation and @sucky_thing.why_it_sucks_explanation.updated_at < DateTime.now - 1.hour
      @sucky_thing.why_it_sucks_explanation.delete 
      @sucky_thing.why_it_sucks_explanation = nil
    end
  end

  def create
    @sucky_thing.why_it_sucks_explanation.destroy if @sucky_thing.why_it_sucks_explanation
    @why_it_sucks_explanation = WhyItSucksExplanation.new(params[:why_it_sucks_explanation])
    @why_it_sucks_explanation.user = @current_user
    @why_it_sucks_explanation.sucky_thing = @sucky_thing
    if @why_it_sucks_explanation.save
      flash[:notice] = "Explanation accepted!"
      redirect_to sucky_thing_issues_path(@sucky_thing)
    else
      render :action => :new
    end
  end

private
  def find_sucky_thing
    @sucky_thing = @current_user.sucky_things.find(params[:sucky_thing_id])
  rescue
    flash[:error] = "No sucky thing found"
    redirect_to :controller => "sucky_things", :action => "index"  
  end

end
