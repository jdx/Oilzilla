class CreateModels < ActiveRecord::Migration
  def self.up
    create_table :models do |t|
      t.integer :make_id
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :models
  end
end
