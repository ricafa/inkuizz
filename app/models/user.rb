class User < ApplicationRecord
  has_many :questions

  def create_question
    Question.create(user_id: id, question_number: question_number)
  end

  def answer_question(an)
    Question.create(user_id: id, question_number: question_number, choosen: an)
  end
end
