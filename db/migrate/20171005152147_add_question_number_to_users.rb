class AddQuestionNumberToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :question_number, :integer, default: 1
    add_index :users, :question_number
  end
end
