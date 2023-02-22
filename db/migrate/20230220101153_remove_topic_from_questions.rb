class RemoveTopicFromQuestions < ActiveRecord::Migration[7.0]
  def change
    remove_column :questions, :topic, :string
  end
end
