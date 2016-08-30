class AddPthreeToAbouts < ActiveRecord::Migration
  def change
    add_column :abouts, :pthree, :text
  end
end
