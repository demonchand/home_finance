class CreateBanks < ActiveRecord::Migration
  def self.up
    create_table :banks do |t|
      t.string :account_number
      t.decimal :amount, :precision => 10, :scale => 2
      t.string :transaction_type
      t.text :description
      t.date :date

      t.timestamps
    end
  end

  def self.down
    drop_table :banks
  end
end
