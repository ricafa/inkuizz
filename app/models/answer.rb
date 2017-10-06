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
          "Money left over"
        when 2
          "Premature Scaling"
        when 3
          "Lack of time"
        when 4
          "Lack of people"
        when 5
          "Distant place"
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
          "It's 82"
        when 2
          "It's 11"
        when 3
          "It's 23"
        when 4
          "It's 42"
        when 5
          nil
      end
  elsif question == 4
    case n
      when 1
        "mark zuckerberg"
      when 2
        "Stephen Hawkins"
      when 3
        "Steve Wozniak"
      when 4
        "Bill Gates"
      when 5
        "Elon Musk"
    end
  elsif question == 5
    case n
      when 1
        "It hacked into tone-dialling systems and allowed users to make free phone calls. (Illegal of course.)"
      when 2
        "It hacked into tone-dialling system across social engineering. (Legal of course.)"
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
