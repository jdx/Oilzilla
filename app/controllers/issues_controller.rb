class IssuesController < ApplicationController

  before_filter :find_sucky_thing

  def index
    @issues = @sucky_thing.issues
    @creative_explanation = @sucky_thing.why_it_sucks_explanation if @sucky_thing.why_it_sucks_explanation and @sucky_thing.why_it_sucks_explanation.updated_at > DateTime.now - 1.hour
  end

  def create
    @issue = Issue.new(params[:issue])
    @issue.user = @current_user
    @issue.sucky_thing = @sucky_thing
    if @issue.save
      flash[:notice] = "Issue saved!"
      redirect_to sucky_thing_issues_path(@sucky_thing, :why_it_sucks_explanation_id => params[:why_it_sucks_explanation_id])
    else
      @issues = @sucky_thing.issues
      render :action => :index
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
