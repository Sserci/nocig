class CreateObjectives < ActiveRecord::Migration[6.1]
  def change
    create_table :objectives do |t|
      t.string :title
      t.integer :amount
      t.date :reaching_date

      t.timestamps
    end
  end
end
