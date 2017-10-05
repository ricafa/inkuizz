class CreateAnswers < ActiveRecord::Migration[5.0]
  def change
    create_table :answers do |t|
      t.references :question, foreign_key: true
      t.integer :question_number
      t.integer :answer_number
      t.boolean :choosen, default: false

      t.timestamps
    end
    add_index :answers, :question_number
    add_index :answers, :answer_number
  end
end
