class SuckyThingsController < ApplicationController
  def create
    @sucky_thing = SuckyThing.new(params[:sucky_thing])
    @sucky_thing.user = @current_user
    if @sucky_thing.save
      flash[:notice] = "Sucky thing added!"
      redirect_to new_sucky_thing_why_it_sucks_explanation_path(@sucky_thing)
    else
      @sucky_things = @current_user.sucky_things
      render :action => :index
    end
  end

  def index
    @sucky_things = @current_user.sucky_things
    @sucky_thing = SuckyThing.new
  end

  def show
    @sucky_thing = @current_user.sucky_things.find(params[:id])
    @creative_explanation = @sucky_thing.why_it_sucks_explanation if @sucky_thing.why_it_sucks_explanation and @sucky_thing.why_it_sucks_explanation.updated_at > DateTime.now - 1.hour
  end
  # This is done in order to show the fieldWithErrors item as a div instead of a span -JD
  ActionView::Base.field_error_proc = Proc.new { |html_tag, instance| "<span class=\"fieldWithErrors\">#{html_tag}</span>" }
end
