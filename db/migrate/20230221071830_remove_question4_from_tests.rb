class RemoveQuestion4FromTests < ActiveRecord::Migration[7.0]
  def change
     remove_column :tests, :question4, :string
  end
end
