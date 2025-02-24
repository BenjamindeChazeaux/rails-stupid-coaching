class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:question]
    @answer = if @question.blank?
                "I can't hear your silence..."
              elsif @question.end_with?("?")
                "Silly question, get dressed and go to work!"
              elsif @question.upcase == @question && @question.present?
                "I can hear you just fine! No need to yell!"
              elsif @question.include?("I am going to work right now!")
                "Great!"
              else
                "I don't care, get dressed and go to work!"
              end
  end
end
