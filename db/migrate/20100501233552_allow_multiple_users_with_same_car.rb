class AllowMultipleUsersWithSameCar < ActiveRecord::Migration
  def self.up
    create_table :cars_users, :id => false do |t|
      t.references :car
      t.references :user
      t.timestamps
    end
  end

  def self.down
    drop_table :cars_users
  end
end
