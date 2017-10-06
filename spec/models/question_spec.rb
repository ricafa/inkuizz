require 'rails_helper'

RSpec.describe Question, type: :model do
  before do
    @question = Question.create(user_id: User.create.id, question_number: rand(1..5))
  end
  it "ask a String question" do
    expect(@question.ask_a_question.class).to eq(String)
  end

  it "ask a readable question" do
    expect(@question.ask_a_question.length).to be > 0
  end

  it 'choose an fixnum answer' do
    expect(@question.right_answer.class).to eq(Fixnum)
  end

  it 'choose an valid answer' do
    expect(@question.right_answer).to be > 0 && be < 6
  end
end
