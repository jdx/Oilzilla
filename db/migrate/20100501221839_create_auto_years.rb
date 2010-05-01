class CreateAutoYears < ActiveRecord::Migration
  def self.up
    create_table :auto_years do |t|
      t.integer :model_id
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :auto_years
  end
end
