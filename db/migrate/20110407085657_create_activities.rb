class CreateActivities < ActiveRecord::Migration
  def self.up
    create_table :activities do |t|
      t.date :date
      t.text :description
      t.string :from
      t.string :to
      t.decimal :cash, :precision => 10, :scale => 2

      t.timestamps
    end
  end

  def self.down
    drop_table :activities
  end
end
