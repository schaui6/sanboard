class AddPfourToAbouts < ActiveRecord::Migration
  def change
    add_column :abouts, :pfour, :text
  end
end
