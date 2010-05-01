class Issue < ActiveRecord::Base
  belongs_to :sucky_thing
  belongs_to :user
end
