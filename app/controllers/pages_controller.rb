class PagesController < ApplicationController

  def ask
  end

  def answer
    @question = params[:question]
    @answer = coach_answer(@question)
  end

  def coach_answer(question)
    if question.downcase == "i am going to work"
      'Great!'.upcase
    elsif question.end_with?("?")
      "Silly question, get dressed and go to work!".upcase
    else
      "I don't care, get dressed and go to work!".upcase
    end
  end
end
