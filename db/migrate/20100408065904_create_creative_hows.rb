class CreateCreativeHows < ActiveRecord::Migration
  def self.up
    create_table :creative_hows do |t|
      t.text :content
      t.integer :user_id
      t.integer :sucky_thing_id

      t.timestamps
    end
  end

  def self.down
    drop_table :creative_hows
  end
end
