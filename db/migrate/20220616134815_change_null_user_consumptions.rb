class ChangeNullUserConsumptions < ActiveRecord::Migration[6.1]
  def change
    change_column_null(:consumptions, :user_id, true)
  end
end
