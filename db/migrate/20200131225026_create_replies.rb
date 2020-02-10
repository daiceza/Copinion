class CreateReplies < ActiveRecord::Migration[5.1]
  def change
    create_table :replies do |t|
      t.references :opinion,foreign_key:true
      t.string :text

      t.timestamps
    end
    add_index :replies,[:opinion_id,:created_at]
  end
end
