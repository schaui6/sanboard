class AddPfiveToAbouts < ActiveRecord::Migration
  def change
    add_column :abouts, :pfive, :text
  end
end
