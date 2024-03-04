class QuestionsController < ApplicationController
  def ask
  end

  def coach_answer(your_message)
    user_message = your_message.strip.downcase
    if user_message.end_with?("?")
      @answer = "Silly question, get dressed and go to work!"
    elsif user_message == "i am going to work"
      @answer = "Great!"
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end

  def answer
    if params[:question]
      @question = params[:question]
      coach_answer(@question)
    end
  end
end
