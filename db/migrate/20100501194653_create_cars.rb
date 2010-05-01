class CreateCars < ActiveRecord::Migration
  def self.up
    create_table :cars do |t|
      t.integer :user_id
      t.integer :make_id
      t.integer :model_id
      t.integer :auto_year_id
      t.integer :trim_id

      t.timestamps
    end
  end

  def self.down
    drop_table :cars
  end
end
