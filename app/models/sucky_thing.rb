class SuckyThing < ActiveRecord::Base
  validates_presence_of :name
  validates_uniqueness_of :name, :scope => :user_id
  belongs_to :user
  has_one :why_it_sucks_explanation
  has_one :creative_how
  has_many :issues
  has_many :solutions

  def to_s
    self.name
  end
end
