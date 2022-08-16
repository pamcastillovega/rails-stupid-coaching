class QuestionsController < ApplicationController
  def ask
  end
  def answer
    # message is whatever url params pass, or if empty, it is equal to empty string
    @message = params[:message] || ''
    @answer = get_answer
  end

  def get_answer
    if @message.include?("?")
      @answer = 'Silly question, get dressed and go to work!'
    elsif @message == 'I am going to work'
      @answer = 'Great!'
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end
