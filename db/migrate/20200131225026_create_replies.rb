class CreateReplies < ActiveRecord::Migration[5.1]
  def change
    create_table :replies do |t|
      t.integer :opinion_id
      t.string :text

      t.timestamps
    end
    
  end
end