class CreateWhyItSucksExplanations < ActiveRecord::Migration
  def self.up
    create_table :why_it_sucks_explanations do |t|
      t.string :reason
      t.integer :sucky_thing_id
      t.integer :user_id

      t.timestamps
    end
  end

  def self.down
    drop_table :why_it_sucks_explanations
  end
end
