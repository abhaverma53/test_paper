class RemoveQuestion3FromTests < ActiveRecord::Migration[7.0]
  def change
    remove_column :tests, :question3, :string
  end
end
