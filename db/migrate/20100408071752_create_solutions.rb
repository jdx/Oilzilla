class CreateSolutions < ActiveRecord::Migration
  def self.up
    create_table :solutions do |t|
      t.string :content
      t.integer :user_id
      t.integer :sucky_thing_id

      t.timestamps
    end
  end

  def self.down
    drop_table :solutions
  end
end
