class CreateCigarettes < ActiveRecord::Migration[6.1]
  def change
    create_table :cigarettes do |t|
      t.string :brand
      t.float :price

      t.timestamps
    end
  end
end
