class CreateOpinions < ActiveRecord::Migration[5.1]
  def change
    create_table :opinions do |t|
      t.string :title
      t.string :category
      t.string :text

      t.timestamps
    end
  end
end
