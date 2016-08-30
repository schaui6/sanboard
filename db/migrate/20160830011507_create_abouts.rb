class CreateAbouts < ActiveRecord::Migration
  def change
    create_table :abouts do |t|
      t.string :title
      t.attachment :image
      t.text :paragraph_one
      t.text :paragraph_two
      t.text :paragraph_three
      t.text :paragraph_four
      t.text :paragraph_five

      t.timestamps null: false
    end
  end
end
