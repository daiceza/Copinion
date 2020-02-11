class CreateOpinions < ActiveRecord::Migration[5.1]
  def change
    create_table :opinions do |t|
      t.string :title
      t.string :category
      t.string :text
      t.boolean :solve,default: false

      t.timestamps
    end
  end
end
