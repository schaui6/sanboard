class AddPoneToAbouts < ActiveRecord::Migration
  def change
    add_column :abouts, :pone, :text
  end
end
