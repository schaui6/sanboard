class AddPtwoToAbouts < ActiveRecord::Migration
  def change
    add_column :abouts, :ptwo, :text
  end
end
