class RemoveQuestion5FromTests < ActiveRecord::Migration[7.0]
  def change
     remove_column :tests, :question5, :string
  end
end
