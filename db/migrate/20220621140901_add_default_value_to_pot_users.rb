class AddDefaultValueToPotUsers < ActiveRecord::Migration[6.1]
  def change
    change_column_default :users, :pot, 0
  end
end
