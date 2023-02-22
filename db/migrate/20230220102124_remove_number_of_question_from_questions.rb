class RemoveNumberOfQuestionFromQuestions < ActiveRecord::Migration[7.0]
  def change
    remove_column :questions, :number_of_question, :string
  end
end
