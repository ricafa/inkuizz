require 'rails_helper'

RSpec.describe User, type: :model do
  before do
    @user = User.create(thekey: SecureRandom.base58(24))
  end

  it 'creates a question' do
    @q = @user.create_question
    expect(@q.class).to eq(Question)
  end

  it 'creates a valid question' do
    @q = @user.create_question
    expect(@q.valid?).to eq(true)
  end

  it 'choose an answer' do
    @qq = @user.answer_question rand(1..5)
    expect(@qq.choosen.class).to eq(Fixnum)
  end

  it 'choose an valid answer' do
    @qq = @user.answer_question rand(1..5)
    expect(@qq.choosen).to be > 0
  end

end
