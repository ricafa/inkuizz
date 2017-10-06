class PagesController < ApplicationController
  before_action :setUser

  def start
    #  binding.pry
    if params[:an].present?

      @user.answer_question params[:an]

      #get the next question
      @user.question_number = @user.question_number + 1
      @user.save
      @question = @user.create_question
    else #if question is nil, start from the beginning
      @question = @user.create_question
    end

    redirect_to finish_path if quizz_end
    generate_answers @question.question_number

  end

  def finish
    redirect_to start_path unless quizz_end
  end

  private

  def quizz_end
    @user.question_number >5
  end

  def setUser
    if params[:uid].present?
      @user = User.find(params[:uid])
    elsif cookies.permanent[:thekey].present?
      @user = User.where(thekey: cookies.permanent[:thekey]).first
    else
      cookies.permanent[:thekey] = SecureRandom.base58(24)
      @user = User.create(thekey: cookies.permanent[:thekey])
    end
  end

  def generate_answers(question_number)
    @answers  = []
    1.upto(5) do |i|
      @answers << Answer.create(question_number: question_number, answer_number:i)
    end
    @answers
  end

end
