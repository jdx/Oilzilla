class CreateTrims < ActiveRecord::Migration
  def self.up
    create_table :trims do |t|
      t.integer :auto_year_id
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :trims
  end
end
