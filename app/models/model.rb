class Model < ActiveRecord::Base
  belongs_to :make
  has_many :auto_years
  
  def to_s
    name
  end
end
