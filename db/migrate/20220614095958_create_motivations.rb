class CreateMotivations < ActiveRecord::Migration[6.1]
  def change
    create_table :motivations do |t|
      t.string :title
      t.string :content
      t.string :category_name

      t.timestamps
    end
  end
end
