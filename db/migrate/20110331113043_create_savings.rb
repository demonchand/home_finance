class CreateSavings < ActiveRecord::Migration
  def self.up
    create_table :savings do |t|
      t.decimal :balance_amount, :precision => 10, :scale => 2

      t.timestamps
    end
  end

  def self.down
    drop_table :savings
  end
end
