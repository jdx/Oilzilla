class MakesController < ApplicationController
  def index
    @makes = Make.find(:all, :select => "name").map(&:name)
    respond_to do |format|
        format.xml  { render :xml => @makes }
        format.json  { render :json => @makes }
    end
  end
end
