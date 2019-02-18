class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:question]

    if @question == 'I am going to work'
      @answer = "Okay - but couldn't you have become a doctor?"
    elsif @question == "Mom I am a doctor"
      @answer = "Okay - but are you a neurosurgeon?"
    elsif @question == "Mom I am a neurosurgeon"
      @answer = "Your brother is going to become President of the United States though."
    elsif @question[-1] == '?'
      @answer = 'Silly question, get dressed, go to school, get good grades, and get a good job!'
    else
      @answer = "I don't care, get dressed, go to school, get good grades, and get a good job!"
    end
  end
end
