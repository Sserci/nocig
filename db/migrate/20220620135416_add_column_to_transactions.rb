class AddColumnToTransactions < ActiveRecord::Migration[6.1]
  def change
    add_column :transactions, :packs_number, :integer
  end
end
