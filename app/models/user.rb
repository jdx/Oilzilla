class User < ActiveRecord::Base
  has_many :sucky_things
  has_many :why_it_sucks_explanations
  has_many :creative_hows
  has_many :issues
  has_many :solutions

  acts_as_authentic do |c|
    c.validate_login_field = false
  end
end
