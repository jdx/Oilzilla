class ModelsController < ApplicationController
  def index
    if params[:make_id]
      conditions = ["make_id = #{params[:make_id]} AND name LIKE ?", "#{params[:term]}%"]
    else
      conditions = ["name LIKE ?", "#{params[:term]}%"]
    end
    @models = Model.find(:all, :conditions => conditions, :select => "name, id").map do |m|
        model = { :value => m.name, :id => m.id }
    end
    respond_to do |format|
        format.xml  { render :xml => @models }
        format.json  { render :json => @models }
    end
  end
end
