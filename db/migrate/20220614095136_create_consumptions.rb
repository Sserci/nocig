class CreateConsumptions < ActiveRecord::Migration[6.1]
  def change
    create_table :consumptions do |t|
      t.integer :quantity
      t.references :cigarette, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.date :date

      t.timestamps
    end
  end
end
