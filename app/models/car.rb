class Car < ActiveRecord::Base
  has_and_belongs_to_many :users
  belongs_to :make
  belongs_to :model
  belongs_to :auto_year
  belongs_to :trim
  
  attr_accessor :make_string
  attr_accessor :model_string
  attr_accessor :auto_year_int
  attr_accessor :trim_string
  
  validates_presence_of :make_string, :on => :create, :message => "Make cannot be blank"
  validates_presence_of :model_string, :on => :create, :message => "model cannot be blank"
  validates_presence_of :auto_year_int, :on => :create, :message => "Year cannot be blank"
  validates_presence_of :trim_string, :on => :create, :message => "Trim cannot be blank"
    
  def to_s
    "#{auto_year} #{make} #{model} #{trim}" 
  end
end
