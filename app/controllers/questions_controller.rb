class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @ask = params[:ask]
    @answer = "I don't care, get dressed and go to work!"
    if @ask == "I am going to work"
      @answer = "Great!"
    elsif @ask.end_with?("?")
      @answer = "Stupid question, get dressed and go to work!"
    else
      @answer
    end
  end
end
