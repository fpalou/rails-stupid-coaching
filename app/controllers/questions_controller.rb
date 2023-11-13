class QuestionsController < ApplicationController

  def ask
    @user_response = params[:question]
  end

  def answer
    # params[:question] == "hey" ? @server_answer = "hey yo" : "yo yo no hey?"
    case params[:question]
    when 'I am going to work'
      @server_answer = 'Great!'
    when params[:question].include?('?')
      @server_answer = 'Silly question, get dressed and go to work!'
    else
      @server_answer = "I don't care, get dressed and go to work!"
    end
  end
end
