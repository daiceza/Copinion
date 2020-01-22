class CreateLives < ActiveRecord::Migration[5.1]
  def change
    create_table :lives do |t|
      t.string :title
      t.string :text

      t.timestamps
    end
  end
end
