class AutoYear < ActiveRecord::Base
  belongs_to :model
  has_many :trims
  
  def to_s
    name
  end
end
