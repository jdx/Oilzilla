class TrimsController < ApplicationController
  def index
    if params[:auto_year]
      conditions = ["auto_year_id = #{params[:auto_year_id]} AND name LIKE ?", "#{params[:term]}%"]
    else
      conditions = ["name LIKE ?", "#{params[:term]}%"]
    end
    @trims = Trim.find(:all, :conditions => conditions, :select => "name, id").map do |m|
        trims = { :value => m.name, :id => m.id }
    end
    respond_to do |format|
        format.xml  { render :xml => @trims }
        format.json  { render :json => @trims }
    end
  end
end
