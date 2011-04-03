class AddDateFieldToSaving < ActiveRecord::Migration
  def self.up
    add_column :savings, :date, :datetime
  end

  def self.down
    remove_column :savings, :date
  end
end
