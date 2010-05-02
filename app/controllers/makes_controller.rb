class MakesController < ApplicationController
  def index
    conditions = ["name LIKE ?", "#{params[:term]}%"]
    @makes = Make.find(:all, :conditions => conditions, :select => "name, id").map do |m|
        make = { :value => m.name, :id => m.id }
    end
    respond_to do |format|
        format.xml  { render :xml => @makes }
        format.json  { render :json => @makes }
    end
  end
end
