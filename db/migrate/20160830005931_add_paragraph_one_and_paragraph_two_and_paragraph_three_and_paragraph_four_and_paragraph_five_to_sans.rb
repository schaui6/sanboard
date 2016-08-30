class AddParagraphOneAndParagraphTwoAndParagraphThreeAndParagraphFourAndParagraphFiveToSans < ActiveRecord::Migration
  def change
    add_column :sans, :paragraph_one, :text
    add_column :sans, :paragraph_two, :text
    add_column :sans, :paragraph_three, :text
    add_column :sans, :paragraph_four, :text
    add_column :sans, :paragraph_five, :text
  end
end
