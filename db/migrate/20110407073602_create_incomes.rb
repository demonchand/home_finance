class CreateIncomes < ActiveRecord::Migration
  def self.up
    create_table :incomes do |t|
      t.string :name_of_the_income_source
      t.date :date
      t.decimal :money, :precision => 10, :scale => 2

      t.timestamps
    end
  end

  def self.down
    drop_table :incomes
  end
end
