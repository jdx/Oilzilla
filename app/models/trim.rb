class Trim < ActiveRecord::Base
  belongs_to :auto_year
  
  def to_s
    name
  end
end
