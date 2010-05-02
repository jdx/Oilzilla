class TrimsController < ApplicationController
  def index
    if params[:auto_year_id]
      @trims = Trim.find(:all, :conditions => { :auto_year_id => params[:auto_year_id] }, :select => "name").map(&:name)
    else
      @trims = Trim.find(:all, :select => "name").map(&:name)
    end
    respond_to do |format|
        format.xml  { render :xml => @trims }
        format.json  { render :json => @trims }
    end
  end
end
