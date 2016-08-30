class AddGithubToPins < ActiveRecord::Migration
  def change
    add_column :pins, :github, :string
  end
end
