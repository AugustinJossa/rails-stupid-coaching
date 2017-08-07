class CoachingsController < ApplicationController
  def answer
    @user_question = params[:user_question]
    @answer = coach_answer_enhanced(@user_question)
  end

  def ask
  end

  private

  def coach_answer(your_message)
  # TODO: return coach answer to your_message

  if (your_message == "I am going to work right now!") == true
    answer = ""
  elsif your_message.include?("?") == true
    answer = "Silly question, get dressed and go to work!"
  else
    answer = "I don't care, get dressed and go to work!"
  end

  return answer

end

  def coach_answer_enhanced(your_message)
    # TODO: return coach answer to your_message, with additional custom rules of yours!
    if (your_message == "I AM GOING TO WORK RIGHT NOW!") == true
      answer = ""
    elsif (your_message == your_message.upcase) == true
      answer = ("I can feel your motivation! #{coach_answer(your_message)}")
    else
      answer = (coach_answer(your_message))
    end

    return answer
  end

  end



