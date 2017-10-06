class Answer < ApplicationRecord

  def options
      option(question_number, answer_number)
  end

  def total
    Question.where(question_number: question_number, choosen: answer_number).count
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
    elsif question == 3
      case n
        when 1
          "3 an 1"
        when 2
          "3 an 2"
        when 3
          "3 an 3"
        when 4
          "3 an 4"
        when 5
          nil
      end
  elsif question == 4
    case n
      when 1
        "4 an 1"
      when 2
        "4 an 2"
      when 3
        "4 an 3"
      when 4
        "4 an 4"
      when 5
        "4 an 5"
    end
  elsif question == 5
    case n
      when 1
        "5 an 1"
      when 2
        "5 an 2"
      when 3
        nil
      when 4
        nil
      when 5
        nil
    end
  end
end
end
