class AddMissingFieldToLoan < ActiveRecord::Migration
  def self.up
    add_column :loans, :description, :text
    add_column :loans, :type_of_credit, :string
    add_column :loans, :name_of_the_giver, :string 
  end 

  def self.down
    remove_column :loans, :description
    remove_column :loans, :type_of_credit
    remove_column :loans, :name_of_the_giver
  end
end
