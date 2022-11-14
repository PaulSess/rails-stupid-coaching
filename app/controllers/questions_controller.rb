class QuestionsController < ApplicationController

  def ask
  end

  def answer
    answers = { A1: 'Great', A2: 'Silly question,get dressed and go to work!', A3: "I don't care, get dressed and go to work!" }
    if params[:question] == 'I am going to work'
      @answer = answers[:A1]
    elsif params[:question].include?('?')
      @answer = answers[:A2]
    else
      @answer = answers[:A3]
    end
  end
end
