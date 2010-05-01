class Car < ActiveRecord::Base
  belongs_to :user
  belongs_to :make
  belongs_to :model
  belongs_to :auto_year
  belongs_to :trim
  
  attr_accessor :make_string
  attr_accessor :model_string
  attr_accessor :auto_year_int
  attr_accessor :trim_string
  
  def to_s
    "#{auto_year} #{make} #{model} #{trim}" 
  end
end
