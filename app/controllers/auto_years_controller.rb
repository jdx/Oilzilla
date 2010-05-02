class AutoYearsController < ApplicationController
  def index
    if params[:model_id]
      conditions = ["model_id = #{params[:model_id]} AND name LIKE ?", "#{params[:term]}%"]
    else
      conditions = ["name LIKE ?", "#{params[:term]}%"]
    end
    @auto_years = AutoYear.find(:all, :conditions => conditions, :select => "name, id").map do |m|
        auto_year = { :value => m.name, :id => m.id }
    end
    respond_to do |format|
        format.xml  { render :xml => @auto_years }
        format.json  { render :json => @auto_years }
    end
  end
end
