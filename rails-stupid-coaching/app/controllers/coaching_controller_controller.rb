class CoachingControllerController < ApplicationController


  def answer
    @question = params[:query]

    if @question.include?("?")
      if @question.upcase == @question
        @answer = "I can feel your motivation!" + " " + "Silly question, get dressed and go to work!"
      else
        @answer = "Silly question, get dressed and go to work!"
      end
    elsif (@question == "I am going to work right now!") || (@question == "I AM GOING TO WORK RIGHT NOW!")
      @answer = ""
    elsif @question.upcase == @question
      @answer = "I can feel your motivation!" + " " + "I don't care, get dressed and go to work!"
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end




  def ask

  end
end
