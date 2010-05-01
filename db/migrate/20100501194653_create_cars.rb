class CreateCars < ActiveRecord::Migration
  def self.up
    create_table :cars do |t|
      t.integer :user_id
      t.string :make
      t.string :model
      t.integer :year
      t.string :trim

      t.timestamps
    end
  end

  def self.down
    drop_table :cars
  end
end
