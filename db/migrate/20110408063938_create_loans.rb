class CreateLoans < ActiveRecord::Migration
  def self.up
    create_table :loans do |t|
      t.string :giver_name
      t.date :loan_start_date
      t.date :loan_promise_date
      t.decimal :loan_amount, :precision => 10, :scale => 2
      t.string :status

      t.timestamps
    end
  end

  def self.down
    drop_table :loans
  end
end
