class CreateQuestions < ActiveRecord::Migration[5.0]
  def change
    create_table :questions do |t|
      t.references :user, foreign_key: true
      t.integer :right_answer
      t.integer :question_number
      t.boolean :correct, default:false
      t.integer :choosen

      t.timestamps
    end
    add_index :questions, :right_answer
    add_index :questions, :question_number
    add_index :questions, :choosen
  end
end
