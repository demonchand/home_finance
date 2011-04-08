class CreateRepayments < ActiveRecord::Migration
  def self.up
    create_table :repayments do |t|
      t.integer :loan_id
      t.date :repayment_date
      t.decimal :repayment_amount, :precision => 10, :scale => 2

      t.timestamps
    end
  end

  def self.down
    drop_table :repayments
  end
end
