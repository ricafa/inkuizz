class Answer < ApplicationRecord

  def options
      option(question_number, answer_number)
  end


  private

  def option(question, n)
    if question == 1
      case n
        when 1
          "53"
        when 2
          "42"
        when 3
          "18"
        when 4
          "12"
        when 5
          "23"
      end
    elsif question == 2
      case n
        when 1
          "Between 15 and 20 times per minute"
        when 2
          "Between 8 and 13 times per minute"
        when 3
          "Between 22 and 35 times per minute"
        when 4
          nil
        when 5
          nil
      end
    end
  end
end
