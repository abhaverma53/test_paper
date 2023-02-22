class AddAttrToQuestions < ActiveRecord::Migration[7.0]
  def change
    add_column :questions, :question0, :string
    add_column :questions, :question1, :string
    add_column :questions, :question2, :string
    add_column :questions, :question3, :string
    add_column :questions, :question4, :string
    add_column :questions, :question5, :string
  end
end
