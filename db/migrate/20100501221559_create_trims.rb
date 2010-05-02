class CreateTrims < ActiveRecord::Migration
  def self.up
    create_table :trims do |t|
      t.references :auto_year
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :trims
  end
end
