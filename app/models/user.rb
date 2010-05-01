class User < ActiveRecord::Base
  has_many :cars
  
  acts_as_authentic
end
