class CreativeHow < ActiveRecord::Base
  belongs_to :user
  belongs_to :sucky_thing

  validates_length_of :content, :too_short => "must contain at least 500 words", :tokenizer => lambda{ |s| s.scan(/\w+/) }, :minimum => 500
end
