class ChangeIngredientsColumn < ActiveRecord::Migration
  def change
    rename_column :pins, :ingredients, :technologies
  end
end
