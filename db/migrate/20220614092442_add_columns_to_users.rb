class AddColumnsToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :age, :integer
    add_column :users, :gender, :string
    add_column :users, :iban, :string
    add_column :users, :bank_name, :string
    add_column :users, :pot, :integer
    add_column :users, :objective_title, :string
    add_column :users, :objective_amount, :integer
    add_column :users, :objective_category, :string
  end
end
