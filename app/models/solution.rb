class Solution < ActiveRecord::Base
  belongs_to :user
  belongs_to :sucky_thing

  validates_presence_of :content
end
