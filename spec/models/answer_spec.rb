require 'rails_helper'

RSpec.describe Answer, type: :model do
  before do
    @answer = Answer.create(question_number: rand(1..5), answer_number: rand(1..2))
  end
  it "returns an String option" do
    expect(@answer.options.class).to eq(String)
  end

  it "returns an readable option" do
    expect(@answer.options.length).to be > 0
  end

  it "sum" do
    expect(@answer.total.class).to eq(Fixnum)
  end
end
