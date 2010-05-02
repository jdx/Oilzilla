class AutoYearsController < ApplicationController
  def index
    if params[:model_id]
      @auto_year = AutoYear.find(:all, :conditions => { :model_id => params[:model_id] }, :select => "name").map(&:name)
    else
      @auto_year = AutoYear.find(:all, :select => "name").map(&:name)
    end
    respond_to do |format|
        format.xml  { render :xml => @auto_year }
        format.json  { render :json => @auto_year }
    end
  end
end
