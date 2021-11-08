class QuestionsController < ApplicationController
  def ask

  end

  def answer
    # raise
    # initiate the user question
    @question = params[:question]
    # initialize an empty answer
    @answer = ''
    # if the question contains a question mark
    if @question.include? '?'
      # set the answer to 'Silly question, get dressed and go to work!'
      @answer = 'Silly question, get dressed and go to work!'
    # else if the question contains 'I am going to work'
    elsif @question.include? 'I am going to work'
      # set the answer to 'Great!'
      @answer = 'Great!'
    # else
    else
      # set the answer to 'I don't care, get dressed and go to work!'
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end
