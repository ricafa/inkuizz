class RemoveQuestionidFromAnswers < ActiveRecord::Migration[5.0]
  def change
    remove_column :answers, :question_id
  end
end
