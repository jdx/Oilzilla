class CreateIssues < ActiveRecord::Migration
  def self.up
    create_table :issues do |t|
      t.integer :sucky_thing_id
      t.integer :user_id
      t.string :content

      t.timestamps
    end
  end

  def self.down
    drop_table :issues
  end
end
