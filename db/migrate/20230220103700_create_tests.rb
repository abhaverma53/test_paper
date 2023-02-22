class CreateTests < ActiveRecord::Migration[7.0]
  def change
    create_table :tests do |t|
      t.string :question0
      t.string :question1
      t.string :question2
      t.string :question3
      t.string :question4
      t.string :question5

      t.timestamps
    end
  end
end
