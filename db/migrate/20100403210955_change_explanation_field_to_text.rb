class ChangeExplanationFieldToText < ActiveRecord::Migration
  def self.up
    change_column :why_it_sucks_explanations, :reason, :text
  end

  def self.down
    change_column :why_it_sucks_explanations, :reason, :string
  end
end
