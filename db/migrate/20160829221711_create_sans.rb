class CreateSans < ActiveRecord::Migration
  def change
    create_table :sans do |t|
      t.string :title

      t.timestamps null: false
    end
  end
end
