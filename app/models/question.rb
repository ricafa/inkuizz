class Question < ApplicationRecord
  belongs_to :user

  before_save :set_right_answer
  after_save :set_new_question

  def ask_a_question
    ask(question_number)
  end

  private

  def ask(n)
    case n
      when 1
        "What is the most likely reason you’ll fail?"
      when 2
        "How often a human blink?"
      when 3
        "What is the answer for life universe and everything?"
      when 4
        "This man started life interning as a financial analyst for the Bank of Nova Scotia. He has claimed that he will one day 'build an intelligent car capable of not believing in God'. Who is he?"
      when 5
        "Steve Jobs and Steve Wozniak founded Apple. But long before the company was formally launched they sold their first product named the Blue Box. What exactly did the Blue Box do?"
    end
  end

  def set_right_answer
    case question_number
      when 1
        self.right_answer = 2
      when 2
        self.right_answer = 1
      when 3
        self.right_answer = 4
      when 4
        self.right_answer = 5
      when 5
        self.right_answer = 1
    end

    #here set if the selected option is the right one.
    self.correct = (choosen == right_answer)
  end

  def set_new_question

  end

end
