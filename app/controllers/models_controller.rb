class ModelsController < ApplicationController
  def index
    if params[:make_id]
      @model = Model.find(:all, :conditions => { :make_id => params[:make_id] }, :select => "name").map(&:name)
    else
      @model = Model.find(:all, :select => "name").map(&:name)
    end
    respond_to do |format|
        format.xml  { render :xml => @model }
        format.json  { render :json => @model }
    end
  end
end
