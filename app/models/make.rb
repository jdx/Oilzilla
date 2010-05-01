class Make < ActiveRecord::Base
  has_many :models
  
  def to_s
    name
  end
end
