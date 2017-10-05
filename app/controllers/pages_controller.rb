class PagesController < ApplicationController
  before_action :setUser, only: [:start]

  def start
  #  binding.pry
    if @user.question_number < 6
      if params[:an].present?

        @user.answer_question params[:an]
        #get the next question
        @user.question_number = @user.question_number + 1
        @user.save

        @question = @user.create_question
      else #if question is nil, start from the beginning
        @question = @user.create_question
      end
      #get the answers by question_number
      generate_answers @question.question_number
    else #if complete the quiz,it shows the results.
      redirect_to finish_path
    end
  end

  def finish
  end

  private

  def setQuestion #set the question that user stops

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
