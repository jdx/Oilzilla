class CreateSuckyThings < ActiveRecord::Migration
  def self.up
    create_table :sucky_things do |t|
      t.string :name
      t.integer :user_id

      t.timestamps
    end
  end

  def self.down
    drop_table :sucky_things
  end
end
