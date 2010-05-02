class CreateCars < ActiveRecord::Migration
  def self.up
    create_table :cars do |t|
      t.references :make
      t.references :model
      t.references :auto_year
      t.references :trim

      t.timestamps
    end
  end

  def self.down
    drop_table :cars
  end
end
